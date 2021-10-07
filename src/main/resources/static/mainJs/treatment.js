//--------------------------------------- Project Information - Start ---------------------------------------//
/*
    Name: Süleyman KARACA
    Project Name: Vet Klinik
    Page: Treatment Page Js File
    Version: v1.1
    GitHub: https://github.com/slymnkrc
    Date: 13.09.2021
*/
//--------------------------------------- Project Information - End -----------------------------------------//


$(document).ready(function () {
    $('#muayeneTable').DataTable({
        order: [[2, 'desc']],
        dom:
            '<"card-header border-bottom p-1"<"head-label"><"dt-action-buttons text-right"B>><"d-flex justify-content-between align-items-center mx-0 row"<"col-sm-12 col-md-6"l><"col-sm-12 col-md-6"f>>t<"d-flex justify-content-between mx-0 row"<"col-sm-12 col-md-6"i><"col-sm-12 col-md-6"p>>',
        displayLength: 5,
        lengthMenu: [5, 10, 25, 50, 75, 100],
        buttons: [
            {
                extend: 'collection',
                className: 'btn btn-outline-secondary dropdown-toggle mr-2',
                text: feather.icons['share'].toSvg({class: 'font-small-4 mr-50'}) + 'Dışa Aktar',
                buttons: [
                    {
                        extend: 'print',
                        text: feather.icons['printer'].toSvg({class: 'font-small-4 mr-50'}) + 'Yazdır',
                        className: 'dropdown-item',
                        exportOptions: {columns: [0, 1, 2, 3, 4]}
                    },
                    {
                        extend: 'csv',
                        text: feather.icons['file-text'].toSvg({class: 'font-small-4 mr-50'}) + 'Csv',
                        className: 'dropdown-item',
                        exportOptions: {columns: [0, 1, 2, 3, 4]}
                    },
                    {
                        extend: 'excel',
                        text: feather.icons['file'].toSvg({class: 'font-small-4 mr-50'}) + 'Excel',
                        className: 'dropdown-item',
                        exportOptions: {columns: [0, 1, 2, 3, 4]}
                    },
                    {
                        extend: 'pdf',
                        text: feather.icons['clipboard'].toSvg({class: 'font-small-4 mr-50'}) + 'Pdf',
                        className: 'dropdown-item',
                        exportOptions: {columns: [0, 1, 2, 3, 4]}
                    },
                    {
                        extend: 'copy',
                        text: feather.icons['copy'].toSvg({class: 'font-small-4 mr-50'}) + 'Kopyala',
                        className: 'dropdown-item',
                        exportOptions: {columns: [0, 1, 2, 3, 4]}
                    }
                ],
            },

        ],
        language: {
            paginate: {
                // remove previous & next text from pagination
                previous: '&nbsp;',
                next: '&nbsp;'
            }
        }
    });
    $('div.head-label').html('<h2 class="mb-0">Muayene Geçmişi ve Raporlar</h2>');
});


let select_id = 0

function codeGenerator() {
    const date = new Date();
    const time = date.getTime();
    const key = time.toString().substring(4);
    $('#treatmentCode').val(key)
}

codeGenerator()

//---Get All Customers---
function allCustomer() {
    $.ajax({
        url: './treatment/customers',
        type: 'GET',
        contentType: 'application/json; charset=utf-8',
        success: function (data) {
            customerData = data;
            console.log("customers : ", data)
            customerOption(customerData)
        },
        error: function (err) {
            console.log(err)
        }
    })
}

allCustomer()

// Müşteri bilgilerini Sayfaya Gönderme
function customerOption(customerData) {
    customerData.forEach(item => {
        $('#customerSelect').append('<option value="' + item.cuId + '">' + item.cuName + " " + item.cuSurname + '</option>');
    })
}


function patientsByCustomerId(customerId) {
    $.ajax({
        url: `./treatment/patients/${customerId}`,
        type: 'GET',
        contentType: 'application/json; charset=utf-8',
        success: function (data) {
            console.log("patientOptiondata : ", data)
            patientOption(data);
        },
        error: function (err) {
            console.log(err)
        }
    })
}

// Hasta bilgilerini selectList'e ekleme
function patientOption(patientData) {
    patientData.forEach(item => {
        $('#patientsSelect').append('<option value="' + item.paId + '">' + item.paName + ' - ' + item.paChipNo + '</option>');
    })
}

// Müşteri seçildiğinde hastaların bilgilerinin getirilmesi (patientsByCustomerId) ve hasta selectList'ine eklenmesi
$('#customerSelect').change(function () {
    console.log($(this).val())
    //müşteri seçiminin olmaması - yeniden seçilmesi durumunda hasta-ürün-aşı selectlistlerinin sıfırlanması
    $('#patientsSelect').empty();
    $('#patientsSelect').append('<option value="default"> Lütfen Seçim Yapınız</option>');
    if ($(this).val() !== "default") {
        $('#patientsSelect').attr("disabled", false);  //hasta selectlistini enable eder
        patientsByCustomerId($(this).val());
    } else {
        //müşteri seçimi iptal olduğunda diğer selectlistlerin disable edilmesi
        $('#patientsSelect').attr("disabled", true);
    }
});


//---Get All Vaccine---
function allVaccine() {
    $.ajax({
        url: './treatment/vaccines',
        type: 'GET',
        contentType: 'application/json; charset=utf-8',
        success: function (data) {
            vaccineData = data;
            console.log("Vaccine : ", data)
            vaccineOption(vaccineData)
        },
        error: function (err) {
            console.log(err)
        }
    })
}

allVaccine()

// Aşı bilgilerini selectList'e ekleme
function vaccineOption(vaccineData) {
    $('#vaccineSelect').append('<option value="0">Lütfen Seçim Yapınız</option>');
    vaccineData.forEach(item => {
        $('#vaccineSelect').append('<option value="' + item.vacid + '">' + item.vacName + ' - ' + item.vacBarcode + '</option>');
    })
}

// muayene ekleme - start
let globalArrTreatment = []
$('#formTreatment').submit((event) => {
    console.log("Tıklandı.");
    event.preventDefault();

    const customerSelect = $("#customerSelect").val()
    const patientsSelect = $("#patientsSelect").val()
    const vaccineSelect = $("#vaccineSelect").val()
    const laboratory = $("#laboratory").val()
    const operation = $("#operation").val()
    const dressing = $("#dressing").val()
    const radiography = $("#radiography").val()
    const medicine = $("#medicine").val()
    const treatmentCode = $("#treatmentCode").val()
    const treNote = $("#treNote").val()


    const obj = {
        treNote: treNote,
        treLab: laboratory,
        treOperation: operation,
        treDressing: dressing,
        treRadiography: radiography,
        treMedicine: medicine,
        treCode: treatmentCode,
        customer: {
            cuId: customerSelect
        },
        patient: {
            paId: patientsSelect
        },
        vaccine: {
            vacid: vaccineSelect
        },
    }
    console.log(obj)
    if (select_id != 0) {
        // update
        obj["treId"] = select_id;
    }

    $.ajax({
        url: '/treatment/add',
        type: 'POST',
        data: JSON.stringify(obj),
        dataType: 'json',
        contentType: 'application/json; charset=utf-8',
        success: function (data) {
            if (data) {
                console.log("başarılı")
                fncReset();
                window.location.reload();
            } else {
                console.log("başarısız")
                fncReset();
            }
        },
        error: function (err) {
            // console.log(data)
            alert("İşlem işlemi sırısında bir hata oluştu!");
        }
    })
})

// muayene ekleme - end

//Listeleme
function allTreatment() {
    var output;
    $.ajax({
        url: './treatment/list',
        type: 'GET',
        contentType: 'application/json; charset=utf-8',
        async: false,
        success: function (data) {
            console.log("allTreatment - data : " + data)
            output = data;
            globalArrTreatment = output;
        },
        error: function (err) {
            console.log("allTreatment Error : " + err)
        }
    })
    return output;
}


let html = ``

function createRowToDataTable(data) {
    console.log("data", data)
    data.forEach((row) => {
        console.log("row : ", row)
        html += `<tr  role="row" class="odd">
                <td>` + row.treId + `</td>
                <td>` + row.customer.cuName + `</td>
                <td>` + row.patient.paName + `</td>
                <td>` + row.treCode + `</td>
                <td>` + row.treNote + `</td>
                
                 <td class="text-left" >
                    <button value="` + row.treId + `" type="button" class="treDelete btn btn-icon btn-outline-danger"><i data-feather="trash-2" ></i></button>
                    <button value="` + row.treId + `" type="button" class="treUpdate btn btn-icon btn-outline-primary"><i data-feather="edit" ></i></button>
                </td>
                
            </tr>`;
    })
    $('#treatmentTableBody').html(html);
}

function allTreatmentList() {
    let allTreatmentData = allTreatment();
    createRowToDataTable(allTreatmentData)
}

allTreatmentList()

$(".treDelete").click(function () {
    let answer = confirm("Silmek istediğinizden emin misniz?");
    if (answer) {
        $.ajax({
            url: `./treatment/delete/${$(this).attr("value")}`,
            type: 'GET',
            dataType: 'text',
            success: function (data) {
                if (data != "0") {
                    alert("Başarılı")
                    window.location.reload();
                } else {
                    alert("Silme sırasında bir hata oluştu!");
                }
            },
            error: function (err) {
                console.log(err)
            }
        })
    }

});


$(".treUpdate").click(function () {
    const itm = globalArrTreatment.find(item => item.treId == $(this).attr("value"));
    console.log("itm : ", itm)
    select_id = itm.treId;
    $("#customerSelect").val(itm.customer.cuId).trigger('change.select2');

    $('#patientsSelect').append('<option value="' + itm.patient.paId + '">' + itm.patient.paName + ' - ' + itm.patient.paChipNo + '</option>');
    $("#patientsSelect").val(itm.patient.paId).trigger('change.select2');

    $("#vaccineSelect").val(itm.vaccine.vacid).trigger('change.select2');

    $("#laboratory").val(itm.treLab).trigger('change.select2');

    $("#operation").val(itm.treOperation).trigger('change.select2');

    $("#dressing").val(itm.treDressing).trigger('change.select2');

    $("#radiography").val(itm.treRadiography).trigger('change.select2');

    $("#medicine").val(itm.treMedicine).trigger('change.select2');

    $("#treatmentCode").val(itm.treCode)

    $("#treNote").val(itm.treNote);

    $(window).scrollTop(0);
});


function fncReset() {
    $("#formTreatment").trigger("reset")
    $("#customerSelect").val('default').trigger('change')
    $("#patientsSelect").val('default').trigger('change')
    $("#vaccineSelect").val('default').trigger('change')
    $("#laboratory").val('default').trigger('change')
    $("#operation").val('default').trigger('change')
    $("#dressing").val('default').trigger('change')
    $("#radiography").val('default').trigger('change')
    $("#medicine").val('default').trigger('change')
    select_id = 0;
    allTreatment()
    codeGenerator()
}






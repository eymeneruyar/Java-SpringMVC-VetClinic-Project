//--------------------------------------- Project Information - Start ---------------------------------------//
/*
    Name: Süleyman KARACA
    Project Name: Vet Klinik
    Page: Patient Search Page Js File
    Version: v1.2
    GitHub: https://github.com/slymnkrc
    Date: 20.09.2021
*/
//--------------------------------------- Project Information - End -----------------------------------------//

$(document).ready(function() {
    $("#patientSearchTable").DataTable( {

        order: [[2, 'desc']],
        dom:
            '<"card-header border-bottom p-1"<"head-label"><"dt-action-buttons text-right"B>><"d-flex justify-content-between align-items-center mx-0 row"<"col-sm-12 col-md-6"l><"col-sm-12 col-md-6"f>>t<"d-flex justify-content-between mx-0 row"<"col-sm-12 col-md-6"i><"col-sm-12 col-md-6"p>>',
        displayLength: 5,
        lengthMenu: [5, 10, 25, 50, 75, 100],
        buttons: [
            {
                extend: 'collection',
                className: 'btn btn-outline-secondary dropdown-toggle mr-2',
                text: feather.icons['share'].toSvg({ class: 'font-small-4 mr-50' }) + 'Dışa Aktar',
                buttons: [
                    {
                        extend: 'print',
                        text: feather.icons['printer'].toSvg({ class: 'font-small-4 mr-50' }) + 'Yazdır',
                        className: 'dropdown-item',
                        exportOptions: { columns: [1,2,3,4,5] }
                    },
                    {
                        extend: 'csv',
                        text: feather.icons['file-text'].toSvg({ class: 'font-small-4 mr-50' }) + 'Csv',
                        className: 'dropdown-item',
                        exportOptions: { columns: [1,2,3,4,5] }
                    },
                    {
                        extend: 'excel',
                        text: feather.icons['file'].toSvg({ class: 'font-small-4 mr-50' }) + 'Excel',
                        className: 'dropdown-item',
                        exportOptions: { columns: [1,2,3,4,5] }
                    },
                    {
                        extend: 'pdf',
                        text: feather.icons['clipboard'].toSvg({ class: 'font-small-4 mr-50' }) + 'Pdf',
                        className: 'dropdown-item',
                        exportOptions: { columns: [1,2,3,4,5] }
                    },
                    {
                        extend: 'copy',
                        text: feather.icons['copy'].toSvg({ class: 'font-small-4 mr-50' }) + 'Kopyala',
                        className: 'dropdown-item',
                        exportOptions: { columns: [1,2,3,4,5] }
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
    } );
    $('div.head-label').html('<h2 class="mb-0">Hasta Arama ve Rapor</h2>');
} );


//////////////// Update
let select_id = 0;

let globalArrCustomer = []
$('#btnSend').click(function () {
    console.log("Tıklandı.");

    const customer = $("#customerSelect").val()
    const paName = $("#paName").val()
    const paChipNo = $("#paChipNo").val()
    const paAirTag = $("#paAirTag").val()
    const paBirthDate = $("#paBirthDate").val()
    const paType = $("#paType").val()
    const paKind = $("#paKind").val()
    const paSexType = $("#paSexType").val()
    const paSpay = $("#paSpay").val()
    const paColor = $("#paColor").val()

    const obj = {
        customerId: customer,
        paName: paName,
        paChipNo: paChipNo,
        paAirTagNo: paAirTag,
        paBirthDate: paBirthDate,
        paType: paType,
        paSpay: paSpay,
        paKind: paKind,
        paColor: paColor,
        paSexType: paSexType,
        customer:{
            cuId:customer
        }

    }
    console.log(obj)
    if (select_id != 0) {
        // update
        obj["paId"] = select_id;
    }

    $.ajax({
        url: '/patientSearch/paUpdate',
        type: 'POST',
        data: JSON.stringify(obj),
        dataType: 'json',
        contentType: 'application/json; charset=utf-8',
        success: function (data) {
            if (data) {
                console.log("başarılı")
                window.location.reload();
            } else {
                console.log("başarısız")
            }
        },
        error: function (err) {
            // console.log(data)
            alert("İşlem işlemi sırısında bir hata oluştu!");
        }
    })
})
/////////////// Update - Finish

//hasta listesi
function allPatientList(){
    var output;
    $.ajax({
        url: './patientSearch/paList',
        type: 'get',
        contentType : 'application/json; charset=utf-8',
        async: false,
        success: function (data) {
            console.log(data)
            output = data;
            globalArrPatient = output;
        },
        error: function (err) {
            console.log(err)
            alert("Hasta listeleme işlemi sırısında bir hata oluştu!");
        }
    })
    return output;
}
allPatientList()

// patient list ve tablosu
let html = ``

function createRowToDataTable(data) {
    console.log("data", data)
    data.forEach((row) => {
        console.log("row : ", row)
        html += `<tr  role="row" class="odd">
                <td>` + row.paId + `</td>
                <td>` + row.paName + `</td>
                <td>` + row.paChipNo + `</td>
                <td>` + row.paBirthDate + `</td>
                <td>` + row.paType + `</td>
                <td>` + row.paKind + `</td>
                
                 <td class="text-left" >
                    <button value="` + row.paId + `" type="button" class="patientDelete btn btn-icon btn-outline-danger"><i data-feather="trash-2" ></i></button>
                    <button value="` + row.paId + `" type="button" class="patientUpdate btn btn-icon btn-outline-primary"  data-target="#customerUpdateModal"><i data-feather="edit"></i></button>
                </td>
                
            </tr>`;
    })
    $('#patientTableRow').html(html);
}

function allPatient() {
    let allPatientData = allPatientList();
    createRowToDataTable(allPatientData)
}

allPatient()


// patient delete
$(".patientDelete").click(function () {
    let answer = confirm("Silmek istediğinizden emin misniz?");
    if (answer) {
        $.ajax({
            url: `./patientSearch/paDelete/${$(this).attr("value")}`,
            type: 'delete',
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

// Müşteri Bilgisini Getirme
function allCustomers() {
    $.ajax({
        url: './patientSearch/customers',
        type: 'GET',
        contentType: 'application/json; charset=utf-8',
        success: function (data) {
            console.log("customers : ", data)
            customerOption(data)

        },
        error: function (err) {
            console.log(err)
        }
    })
}

allCustomers()

// Müşteri bilgilerini selectList'e ekleme
function customerOption(customerData) {
    console.log("product :", customerData)
    customerData.forEach(item => {
        $('#customerSelect').append('<option value="' + item.cuId + '">' + item.cuName + '  ' + item.cuSurname + '</option>');
    })
}


// patient update

$(".patientUpdate").click(function () {
    $('#patientUpdateModal').modal('show');
    const itm = globalArrPatient.find(item => item.paId == $(this).attr("value"));
    console.log("itm : ", itm)
    select_id = itm.paId;
    $("#customerSelect").val(itm.customer.cuId).trigger('change.select2');
    $("#paName").val(itm.paName);
    $("#paChipNo").val(itm.paChipNo);
    $("#paAirTag").val(itm.paAirTagNo);
    $("#paBirthDate").val(itm.paBirthDate);
    $("#paType").val(itm.paType).trigger('change.select2');
    $("#paKind").val(itm.paKind);
    $("#paColor").val(itm.paColor);
    $("#paSexType").val(itm.paSexType).trigger('change.select2');
    $("#paSpay").val(itm.paSpay).trigger('change.select2');

    $(window).scrollTop(0);
});

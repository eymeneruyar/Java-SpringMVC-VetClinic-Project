//--------------------------------------- Project Information - Start ---------------------------------------//
/* 
    Name: Süleyman KARACA 
    Project Name: Vet Klinik
    Page: Sales Page JavaScript File
    Version: v1.1
    GitHub: https://github.com/slymnkrc
    Date: 12.09.2021
*/
//--------------------------------------- Project Information - End -----------------------------------------//

//----------------------------------------------------- Tablo Arama - Export - Pegination İşlemleri -----------------------------------------------------//
$(document).ready(function () {
    $('#salesTable').DataTable({
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
    $('div.head-label').html('<h2 class="mb-0">Satışlar ve Raporlar</h2>');
});


//----------------------------------------------------- Tablo Arama - Export - Pegination İşlemleri -----------------------------------------------------//
let globalCustomer = []
let globalPatient = []
let select_id = 0
codeGenerator()

//---Get All Customers---
function allCustomer() {
    $.ajax({
        url: './sales/customers',
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

//---Get All Patients---
function allPatient() {
    $.ajax({
        url: './sales/patients',
        type: 'GET',
        contentType: 'application/json; charset=utf-8',
        success: function (data) {
            patientData = data;
            console.log("allPatients : ", data);
        },
        error: function (err) {
            console.log(err)
        }
    })
}


function patientsByCustomerId(customerId) {
    $.ajax({
        url: `./sales/patients/${customerId}`,
        type: 'GET',
        contentType: 'application/json; charset=utf-8',
        success: function (data) {
            console.log("data : ", data)
            patientOption(data);
        },
        error: function (err) {
            console.log(err)
        }
    })
}

function productList() {
    $.ajax({
        url: `./productDefinition/list`,
        type: 'GET',
        contentType: 'application/json; charset=utf-8',
        success: function (data) {
            console.log("products : ", data)
            productOption(data);
        },
        error: function (err) {
            console.log(err)
        }
    })
}

function vaccineList() {
    $.ajax({
        url: `./vaccineDefinition/list`,
        type: 'GET',
        contentType: 'application/json; charset=utf-8',
        success: function (data) {
            console.log("vaccines : ", data)
            vaccineOption(data);
        },
        error: function (err) {
            console.log(err)
        }
    })
}

// Müşteri bilgilerini Sayfaya Gönderme
function customerOption(customerData) {
    globalCustomer = customerData;
    customerData.forEach(item => {
        $('#customerSelect').append('<option value="' + item.cuId + '">' + item.cuName + " " + item.cuSurname + '</option>');
    })
}

// Hasta bilgilerini selectList'e ekleme
function patientOption(patientData) {
    patientData.forEach(item => {
        $('#patientsSelect').append('<option value="' + item.paId + '">' + item.paName + ' - ' + item.paChipNo + '</option>');
    })
}

// Ürün bilgilerini selectList'e ekleme
function productOption(productData) {
    productData.forEach(item => {
        $('#productsSelect').append('<option value="' + item.proId + '">' + item.proName + ' - ' + item.proSalesPrice + ' ₺ - Stok: ' + item.proQuantity + ' Barkod: ' + item.proBarcode + '</option>');
    })
}

// Aşı bilgilerini selectList'e ekleme
function vaccineOption(productData) {
    productData.forEach(item => {
        $('#vaccinesSelect').append('<option value="' + item.vacid + '">' + item.vacName + '</option>');
    })
}

// Müşteri seçildiğinde hastaların bilgilerinin getirilmesi (patientsByCustomerId) ve hasta selectList'ine eklenmesi
$('#customerSelect').change(function () {
    console.log($(this).val())
    //müşteri seçiminin olmaması - yeniden seçilmesi durumunda hasta-ürün-aşı selectlistlerinin sıfırlanması
    $('#patientsSelect').empty();
    $('#patientsSelect').append('<option value="default"> Lütfen Seçim Yapınız</option>');

    $('#vaccinesSelect').empty();
    $('#vaccinesSelect').append('<option value="0"> Aşı Seçiniz </option>');

    $('#productsSelect').empty();
    $('#productsSelect').append('<option value="default"> Ürün Seçiniz</option>');

    if ($(this).val() !== "default") {

        $('#patientsSelect').attr("disabled", false);  //hasta selectlistini enable eder
        patientsByCustomerId($(this).val());
    } else {
        //müşteri seçimi iptal olduğunda diğer selectlistlerin disable edilmesi
        $('#patientsSelect').attr("disabled", true);
        $('#vaccinesSelect').attr("disabled", true);
        $('#productsSelect').attr("disabled", true);
    }
});

// Hasta seçildiğinde hastaların bilgilerinin getirilmesi (patientsByCustomerId) ve hasta selectList'ine eklenmesi
$('#patientsSelect').change(function () {
    //ürün ve aşı selectlistlerinin default değerlerinin atanması
    $('#productsSelect').empty();
    $('#productsSelect').append('<option value="default"> Ürün Seçiniz</option>');

    $('#vaccinesSelect').empty();
    $('#vaccinesSelect').append('<option value="0"> Aşı Seçiniz</option>');

    if ($(this).val() !== "default") {
        //hastanın seçilmesi durumunda ürün ve aşı selectlistlerinin getirilmesi ve enable edilmesi
        $('#productsSelect').attr("disabled", false);
        productList();

        $('#vaccinesSelect').attr("disabled", false);
        vaccineList();

    } else {
        //hasta seçiminin iptal olması durumunda ürün ve aşı selectlistlerinin disable edilmesi
        $('#vaccinesSelect').attr("disabled", true);
        $('#productsSelect').attr("disabled", true);
    }
});

// ara fonksiyonlar
function fncReset() {
    $("#salesForm").trigger("reset")
    $('#patientsSelect').empty();
    $('#patientsSelect').append('<option value="default"> Lütfen Seçim Yapınız</option>');
    $('#patientsSelect').attr("disabled", true);


    $('#vaccinesSelect').empty();
    $('#vaccinesSelect').append('<option value="0"> Aşı Seçiniz </option>');
    $('#vaccinesSelect').attr("disabled", true);


    $('#productsSelect').empty();
    $('#productsSelect').append('<option value="default"> Ürün Seçiniz</option>');
    $('#productsSelect').attr("disabled", true);


    $('#customerSelect').empty();
    $('#customerSelect').append('<option value="default"> Hasta Sahibi Seçiniz</option>');
    allCustomer();
    allSales();
    codeGenerator()

}

// ara fonksiyonlar
// satış ekleme - start

let globalArrSales = []
$('#salesForm').submit((event) => {
    console.log("Tıklandı.");
    event.preventDefault();

    const customerSelect = $("#customerSelect").val()
    const patientsSelect = $("#patientsSelect").val()
    const productsSelect = $("#productsSelect").val()
    const saPrAmount = $("#saPrAmount").val()
    const vaccinesSelect = $("#vaccinesSelect").val()
    const saVacAmount = $("#saVacAmount").val()
    const saleNote2 = $("#saleNote2").val()
    const payType = $("#payType").val()
    const labType = $("#labType").val()
    const receiptNo = $("#receiptNo").val()


    const obj = {
        customer: {
            cuId: customerSelect
        },
        patient: {
            paId: patientsSelect
        },
        product: {
            proId: productsSelect
        },
        vaccine: {
            vacid: vaccinesSelect
        },
        saPrAmount: saPrAmount,
        saVacAmount: saVacAmount,
        saNote: saleNote2,
        saPayType: payType,
        saLabType: labType,
        saReceiptNo: receiptNo,
        saSoldDate: fncDate(),


    }
    console.log(obj)
    if (select_id != 0) {
      // update
      obj["saId"] = select_id;
    }
    $.ajax({
        url: '/sales/add',
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

// satış ekleme - end


// list - tablo - start
function allSales() {
    var output;
    $.ajax({
        url: './sales/list',
        type: 'GET',
        contentType: 'application/json; charset=utf-8',
        async: false,
        success: function (data) {
            output = data;
            console.log("allSales - output : " , output)
            globalArrSales = output;
        },
        error: function (err) {
            console.log("allSales Error : " + err)
        }
    })
    return output;
}

// let globalArr = []
//
// function createRow(data) {
//     createDateTable();
//     globalArr = data;
//     console.log("data 0 :", data[0])
//     let html = ``
//     for (let i = 0; i < data.length; i++) {
//         const itm = data[i];
//         html += `<tr role="row" class="odd">
//             <td>` + itm.saId + `</td>
//             <td>` + itm.saReceiptNo + `</td>
//             <td>` + itm.customer.cuName + `</td>
//             <td>` + itm.saPayType + `</td>
//             <td>` + itm.saPrAmount + `</td>
//
//
//             <td class="text-left" >
//                 <button  type="button" class="btn btn-icon btn-outline-danger"><i data-feather="trash-2" ></i></button>
//                 <button  type="button" class="btn btn-icon btn-outline-primary"><i data-feather="edit" ></i></button>
//             </td>
//           </tr>`;
//     }
//     $('#salesTable').html(html);
// }


allSales()

function codeGenerator() {
    const date = new Date();
    const time = date.getTime();
    const key = time.toString().substring(4);
    $('#receiptNo').val(key)
}
let html=``
function createRowToDataTable(data) {

    data.forEach((row) => {
        html += `<tr  role="row" class="odd">
                <td>` + row.saId + `</td>
                <td>` + row.saReceiptNo + `</td>
                <td>` + row.customer.cuName + ' ' + row.customer.cuSurname + `</td>
                <td>` + `${row.saPayType == 1 ? 'Kredi Kartı' : row.saPayType == 2 ? 'Banka Kartı' : row.saPayType == 3 ? 'Eft/Havale' : 'Nakit'}` +`</td>
                <td>` + row.saSoldDate + `</td>
            </tr>`;
    })
    $('#salesTableBody').html(html);
}
//                    <button value="` + row.saId + `" type="button" class="salesUpdate btn btn-icon btn-outline-primary"><i data-feather="edit" ></i></button>
function getAllSales() {
    let allSalesData = allSales();
    createRowToDataTable(allSalesData)
}
getAllSales();


$(".salesDelete").click(function () {
    $.ajax({
        url: `./sales/delete/${$(this).attr("value")}`,
        type: 'GET',
        dataType: 'text',
        success: function (data) {
            if (data != "0") {
                alert("Başarılı")
                getAllSales();
                window.location.reload();
            } else {
                alert("Silme sırasında bir hata oluştu!");
            }
        },
        error: function (err) {
            console.log(err)
        }
    })
});

// $(".salesUpdate").click(function () {
//     const itm = globalArrSales.find(item => item.saId == $(this).attr("value"));
//     console.log("itm : ", itm)
//     select_id = itm.saId;
//     $("#customerSelect").val(itm.customer.cuId).trigger('change');
//
//     $('#patientsSelect').append('<option value="' + itm.patient.paId + '">' + itm.patient.paName + ' - ' + itm.patient.paChipNo + '</option>');
//     $("#patientsSelect").val(itm.patient.paId).trigger('change.select2');
//     $('#productsSelect').attr("disabled", false);
//
//     $('#productsSelect').append('<option value="' + itm.product.proId + '">' + itm.product.proName + ' - ' + itm.product.proSalesPrice + ' ₺ - ' + itm.product.proQuantity + '</option>');
//     $("#productsSelect").val(itm.product.proId).trigger('change.select2');
//     $("#saPrAmount").val(itm.saPrAmount);
//     $('#vaccinesSelect').attr("disabled", false);
//
//     $('#vaccinesSelect').append('<option value="' + itm.vaccine.vacid + '">' + itm.vaccine.vacName + '</option>');
//     $("#vaccinesSelect").val(itm.vaccine.vacid).trigger('change.select2');
//     $("#saVacAmount").val(itm.saVacAmount);
//
//     $("#saleNote2").val(itm.saNote)
//
//     $("#payType").val(itm.saPayType).trigger('change');
//
//     $("#labType").val(itm.saLabType).trigger('change');
//
//     $("#receiptNo").val(itm.saReceiptNo);
//
//     $(window).scrollTop(0);
// });

function fncDate() {
    const d = new Date();
    const ye = new Intl.DateTimeFormat('tr', {year: 'numeric'}).format(d)
    const mo = new Intl.DateTimeFormat('tr', {month: '2-digit'}).format(d)
    const da = new Intl.DateTimeFormat('tr', {day: '2-digit'}).format(d)
    const date = `${da}-${mo}-${ye}`
    return date;
}



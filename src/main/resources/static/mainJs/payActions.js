//--------------------------------------- Project Information - Start ---------------------------------------//
/* 
    Name: Süleyman KARACA 
    Project Name: Vet Klinik
    Page: PayActions Page JavaScript File
    Version: v1.5
    GitHub: https://github.com/slymnkrc
    Date: 23.09.2021
*/
//--------------------------------------- Project Information - End -----------------------------------------//

//----------------------------------------------------- Tablo Arama - Export - Pegination İşlemleri -----------------------------------------------------//
$(document).ready(function () {
    $('#payActionsTable').DataTable({
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
    $('div.head-label').html('<h2 class="mb-0">Kasa Hareketleri</h2>');
});

//----------------------------------------------------- Tablo Arama - Export - Pegination İşlemleri -----------------------------------------------------//
function buyTime() {
    const d = new Date();
    const ye = new Intl.DateTimeFormat('tr', {year: 'numeric'}).format(d)
    const mo = new Intl.DateTimeFormat('tr', {month: '2-digit'}).format(d)
    const da = new Intl.DateTimeFormat('tr', {day: '2-digit'}).format(d)
    const h = d.getHours();
    const m = d.getMinutes();
    const s = d.getSeconds();
    const time = `${h}-${m}-${s}`
    const date = `${da}-${mo}-${ye}`
    var myDate = new Date().toTimeString().replace(/.*(\d{2}:\d{2}:\d{2}).*/, "$1");
    $('#transactionDateIn').val(date + " " + myDate)
    $('#transactionDateOut').val(date + " " + myDate)

    console.log(date)
}

buyTime()


//---Get All Suppliers---
function allSuppliers() {
    $.ajax({
        url: './payActions/suppliers',
        type: 'GET',
        contentType: 'application/json; charset=utf-8',
        success: function (data) {
            supplierData = data;
            console.log("suppliers : ", data)
            supplierOption(supplierData)
        },
        error: function (err) {
            console.log(err)
        }
    })
}

allSuppliers()

// Tedarikçi bilgilerini Sayfaya Gönderme
function supplierOption(supplierData) {
    supplierData.forEach(item => {
        $('#supplierSelect').append('<option value="' + item.supId + '">' + item.supName + '</option>');
    })
}

// Tedarikçi Id sine göre Fiş numalarını sayfaya getirme
function receiptsBySupplierId(supId) {
    $.ajax({
        url: `./payActions/receipts/${supId}`,
        type: 'GET',
        contentType: 'application/json; charset=utf-8',
        success: function (data) {
            console.log("data : ", data)
            receiptOption(data);
        },
        error: function (err) {
            console.log(err)
        }
    })
}

function getBuyingPaymentData(buId) {
    var output;
    $.ajax({
        url: `./payActions/buyingPayment/${buId}`,
        type: 'GET',
        contentType: 'application/json; charset=utf-8',
        async: false,
        success: function (data) {
            console.log("buying Payment : ", data)
            output = data;
        },
        error: function (err) {
            console.log(err)
        }
    })
    return output;
}

// Fiş bilgilerini selectList'e ekleme
function receiptOption(receiptData) {
    receiptData.forEach(item => {
        buyingPayment = getBuyingPaymentData(item.buyId)
        $('#receiptSelect').append('<option value="' + item.buyId + `"${buyingPayment.remainDebt == 0 ? "disabled" : ""}` + '>' + item.buyReceiptNo + ' -- Toplam Alış Borcu: ' + buyingPayment.totalDebt + '₺ Kalan Borç: ' + buyingPayment.remainDebt + '₺ </option>');
    })
}

// seçilen tedarikçiye göre fiş bilgilerini getirir.
$('#supplierSelect').change(function () {
    console.log($(this).val())
    $('#receiptSelect').empty();
    $('#receiptSelect').append('<option value="default"> Fiş Numarası Seçiniz </option>');
    receiptsBySupplierId($(this).val());

});

//---Get All Customers---
function allCustomers() {
    $.ajax({
        url: './payActions/customers',
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

allCustomers()

// Müşteri bilgilerini Sayfaya Gönderme
function customerOption(customerData) {
    customerData.forEach(item => {
        $('#selectCustomer').append('<option value="' + item.cuId + '">' + item.cuName + ' ' + item.cuSurname + '</option>');
    })
}

// Müşteri Id sine göre Fiş numalarını sayfaya getirme
function receiptsByCustomerId(cuId) {
    $.ajax({
        url: `./payActions/receiptsCustomer/${cuId}`,
        type: 'GET',
        contentType: 'application/json; charset=utf-8',
        success: function (data) {
            console.log("data : ", data)
            receiptCustomerOption(data);
        },
        error: function (err) {
            console.log(err)
        }
    })
}

// seçilen müşteriye göre fiş bilgilerini getirir.
$('#selectCustomer').change(function () {
    console.log($(this).val())
    $('#receiptCustomer').empty();
    $('#receiptCustomer').append('<option value="default">Ödeme Yapılacak Fiş Numarasını Seçiniz</option>');
    receiptsByCustomerId($(this).val());

});

function getSalesPaymentData(saId) {
    var output;
    $.ajax({
        url: `./payActions/salesPayment/${saId}`,
        type: 'GET',
        contentType: 'application/json; charset=utf-8',
        async: false,
        success: function (data) {
            console.log("sales Payment : ", data)
            output = data;
        },
        error: function (err) {
            console.log(err)
        }
    })
    return output;
}

// Fiş bilgilerini(customer) selectList'e ekleme
function receiptCustomerOption(data) {
    data.forEach(item => {
        salesPayment = getSalesPaymentData(item.saId)
        $('#receiptCustomer').append('<option value="' + item.saId + `"${salesPayment.remainDebt == 0 ? "disabled" : ""}` + '>' + item.saReceiptNo + ' -- Toplam Satış Borcu: ' + salesPayment.totalDebt + '₺ Kalan Borç: ' + salesPayment.remainDebt + '₺ </option>');
    })
}

let globalArryPayIn = []
let globalArryPayOut = []
let select_id = 0

$('#formPayin').submit((event) => {
    console.log("Tıklandı.");
    event.preventDefault();

    const saId = $("#receiptCustomer").val()
    const pinNote = $("#noteIn").val()
    const createdDate = $("#transactionDateOut").val()
    const pinAmount = $("#amountIn").val()
    const pinPayType = $("#paymentType").val()


    const obj = {
        pinNote: pinNote,
        pinAmount: pinAmount,
        pinPayType: pinPayType,
        createdDate: createdDate,
        sales: {
            saId: saId,
        },
    }

    console.log("obj : ", obj)
    console.log("select id : ", select_id);

    if (select_id != 0) {
        // update
        obj["pinId"] = select_id;
    }
    $.ajax({
        url: '/payActions/payIn/add',
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
            alert("İşlem işlemi sırısında bir hata oluştu!", err);
        }
    })
})

$('#formPayOut').submit((event) => {
    console.log("Tıklandı.");
    event.preventDefault();

    const createdDate = $("#transactionDateIn").val()
    const poutAmount = $("#amountOut").val()
    const poutPayType = $("#paymentTypeOut").val()
    const poutNote = $("#noteOut").val()
    const buyId = $("#receiptSelect").val()


    const obj = {
        poutNote: poutNote,
        poutAmount: poutAmount,
        poutPayType: poutPayType,
        createdDate: createdDate,
        buying: {
            buyId: buyId,
        },
    }
    if (select_id != 0) {
        // update
        obj["poId"] = select_id;
    }
    console.log("obj : ", obj)


    $.ajax({
        url: '/payActions/payOut/add',
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
            alert("İşlem işlemi sırısında bir hata oluştu!", err);
        }
    })
})

function getAllPayInActions() {
    var output;
    $.ajax({
        url: `./payActions/getAllPayIn`,
        type: 'GET',
        contentType: 'application/json; charset=utf-8',
        async: false,
        success: function (data) {
            console.log("All PayIn List : ", data)
            output = data;
            globalArryPayIn = output;
        },
        error: function (err) {
            console.log(err)
        }
    })
    return output;
}

function getAllPayOutActions() {
    var output;
    $.ajax({
        url: `./payActions/getAllPayOut`,
        type: 'GET',
        contentType: 'application/json; charset=utf-8',
        async: false,
        success: function (data) {
            console.log("All PayOut List : ", data)
            output = data;
            globalArryPayOut = output;

        },
        error: function (err) {
            console.log(err)
        }
    })
    return output;
}

let html = ``

function createRowToDataTable(data, dataType) {

    data.forEach((row) => {
        //console.log("row : ", row)
        const payType = row.pinPayType == 0 ? "Kredi Kartı" : row.pinPayType == 1 ? "Banka Kartı"
            : row.pinPayType == 2 ? "Havale/EFT" : "Nakit"
        if (dataType === "payIn") {
            html += `<tr style="background-color:#e3f6e3;" role="row" class="odd">
                <td>` + row.pinId + `</td>
                <td style="font-weight: bold">` + "Gelir" + `</td>
                <td>` + row.createdDate + `</td>
                <td>` + payType + `</td>
                <td style="font-weight: bold">` + row.sales.saReceiptNo + `</td>
                <td>` + row.sales.customer.cuName + ' ' + row.sales.customer.cuSurname + `</td>
                <td>` + row.pinNote + `</td>
                <td style="font-weight: bold">` + row.pinAmount + ` ₺</td>
    
                <td class="text-left" >
                    <button value="` + row.pinId + `" type="button" class="payInDelete btn btn-icon btn-outline-danger"><i data-feather="trash-2" ></i></button>
                    <button value="` + row.pinId + `" type="button" class="payInUpdate btn btn-icon btn-outline-primary"><i data-feather="edit" ></i></button>
                </td>
            </tr>`;

        } else if (dataType === "payOut") {
            html += `<tr style="background-color:#fae8e8;" role="row" class="odd">
                    <td>` + row.poId + `</td>
                    <td style="font-weight: bold" >` + "Gider" + `</td>
                    <td>` + row.createdDate + `</td>
                    <td>` + payType + `</td>
                    <td style="font-weight: bold">` + row.buying.buyReceiptNo + `</td>
                    <td>` + row.buying.supplier.supName + `</td>
                    <td>` + row.poutNote + `</td>
                    <td style="font-weight: bold">` + row.poutAmount + ` ₺ </td>

                <td class="text-left" >
                    <button value="` + row.poId + `" type="button" class="payOutDelete btn btn-icon btn-outline-danger"><i data-feather="trash-2" ></i></button>
                    <button value="` + row.poId + `" type="button" class="payOutUpdate btn btn-icon btn-outline-primary"><i data-feather="edit" ></i></button>
                </td>
                
            </tr>`;

        }
    })
    $('#payActionsBody').html(html);
}

function getAllPayActions() {

    let allPayInActions = getAllPayInActions();
    let allPayOutActions = getAllPayOutActions();

    createRowToDataTable(allPayInActions, "payIn");
    createRowToDataTable(allPayOutActions, "payOut");

}

getAllPayActions();


$(".payInDelete").click(function () {
    console.log("hi payin - delete");
    console.log($(this).attr("value"))

    $.ajax({
        url: `./payActions/payIn/delete/${$(this).attr("value")}`,
        type: 'GET',
        dataType: 'text',
        success: function (data) {
            if (data != "0") {
                alert("Başarılı")
                getAllPayActions();
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

$(".payOutDelete").click(function () {
    console.log("hi payout - delete");
    console.log($(this).attr("value"))

    $.ajax({
        url: `./payActions/payOut/delete/${$(this).attr("value")}`,
        type: 'GET',
        dataType: 'text',
        success: function (data) {
            if (data != "0") {
                alert("Başarılı")
                getAllPayActions();
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

$(".payInUpdate").click(function () {
    console.log("hi payin - update");
    console.log($(this).attr("value"))

    const itm = globalArryPayIn.find(item => item.pinId == $(this).attr("value"));
    console.log("globalArryPayIn : ", globalArryPayIn)
    console.log("itm : ", itm)
    select_id = itm.pinId;
    $("#selectCustomer").val(itm.sales.customer.cuId).trigger('change');

    $('#receiptCustomer').append('<option value="' + itm.sales.saId + '">' + itm.sales.saReceiptNo + '</option>');
    $("#receiptCustomer").val(itm.sales.saId).trigger('change.select2');

    $("#noteIn").val(itm.pinNote)
    $("#transactionDateOut").val(itm.createdDate)
    $("#amountIn").val(itm.pinAmount)
    $("#paymentType").val(itm.pinPayType).trigger('change')
    $(window).scrollTop(0);
});

$(".payOutUpdate").click(function () {
    console.log("hi payout - update");
    console.log($(this).attr("value"))

    const itm = globalArryPayOut.find(item => item.poId == $(this).attr("value"));
    console.log("globalArryPayOut : ", globalArryPayOut)
    console.log("itm : ", itm)

    select_id = itm.poId;

    $("#supplierSelect").val(itm.buying.supplier.supId).trigger('change');

    $('#receiptSelect').append('<option value="' + itm.buying.buyId + '">' + itm.buying.buyReceiptNo + '</option>');
    $("#receiptSelect").val(itm.buying.buyId).trigger('change.select2');

    $("#noteOut").val(itm.poutNote)
    $("#transactionDateIn").val(itm.createdDate)
    $("#amountOut").val(itm.poutAmount)
    $("#paymentTypeOut").val(itm.poutPayType)
    $(window).scrollTop(0);
});

function fncReset() {
    $("#formPayOut").trigger("reset")
}
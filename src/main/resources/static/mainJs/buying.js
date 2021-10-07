//--------------------------------------- Project Information - Start ---------------------------------------//
/* 
    Author: Süleyman KARACA
    Project Name: Vet Klinik
    Page: Buying Page JavaScript File
    Version: v1.1
    GitHub: https://github.com/slymnkrc
    Date: 12.09.2021
*/
//--------------------------------------- Project Information - End -----------------------------------------//

//----------------------------------------------------- Tablo Arama - Export - Pegination İşlemleri -----------------------------------------------------//
$(document).ready(function () {
    $('#buyingTable').DataTable({
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
    $('div.head-label').html('<h2 class="mb-0">Alışlar ve Raporlar</h2>');
});

//----------------------------------------------------- Tablo Arama - Export - Pegination İşlemleri -----------------------------------------------------//
codeGenerator()
let select_id = 0

function fncReset() {
    $("#supForm").trigger("reset")
    $("#selectSupplier").val('default').trigger('change')
    $("#buyingForm").trigger("reset")
    allBuyList
    codeGenerator()
    select_id = 0;
}

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
    const myDate = new Date().toTimeString().replace(/.*(\d{2}:\d{2}:\d{2}).*/, "$1");
    console.log(date)
    return date
}

buyTime()

//---Get All Suppliers---
function allSuppliers() {
    $.ajax({
        url: './buying/suppliers',
        type: 'GET',
        contentType: 'application/json; charset=utf-8',
        success: function (data) {
            console.log("suppliers : ", data)
            supplierOption(data)

        },
        error: function (err) {
            console.log(err)
        }
    })
}

allSuppliers()

// Tedarikçi bilgilerini Sayfaya Gönderme
function supplierOption(suppliersData) {
    suppliersData.forEach(item => {
        $('#selectSupplier').append('<option value="' + item.supId + '">' + item.supName + '</option>');
    })
}

//---Get All SupplierProducts---
function productBySupplierId(supplierId) {
    $.ajax({
        url: `./buying/products/${supplierId}`,
        type: 'GET',
        contentType: 'application/json; charset=utf-8',
        success: function (data) {
            console.log("supplier : ", data)
            productOption(data)

        },
        error: function (err) {
            console.log(err)
        }
    })
}

// Ürün bilgilerini selectList'e ekleme
function productOption(productData) {
    console.log("product :", productData)
    productData.forEach(item => {
        $('#selectProduct').append('<option value="' + item.supProId + '">' + item.supProName + ' - ' + item.supProPrice + ' ₺ - Birim: ' + item.supProUnit + '  </option>');
    })
}

// Tedarikçi seçildiğinde ürün bilgilerinin getirilmesi (productsBySupplierId) ve ürün selectList'ine eklenmesi
$('#selectSupplier').change(function () {
    console.log($(this).val())
    //tedarikçi seçiminin olmaması - yeniden seçilmesi durumunda ürün selectlistlerinin sıfırlanması
    $('#selectProduct').empty();
    $('#selectProduct').append('<option value="default"> Ürün Seçimi Yapınız</option>');

    if ($(this).val() !== "default") {
        $('#selectProduct').attr("disabled", false);  //ürün selectlistini enable eder
        productBySupplierId($(this).val());
    } else {
        //tedarikçi seçimi iptal olduğunda diğer selectlistlerin disable edilmesi
        $('#selectProduct').attr("disabled", true);
    }
});

// Yeni Tedarikçi Ekleme
$('#supForm').submit((event) => {
    event.preventDefault()

    const supName = $("#supName").val()
    const supEmail = $("#supEmail").val()
    const supPhone = $("#supPhone").val()

    const obj = {
        supName: supName,
        supEmail: supEmail,
        supPhone: supPhone,
    }

    $.ajax({
        url: './suppliers/add',
        type: 'POST',
        data: JSON.stringify(obj),
        dataType: 'json',
        contentType: 'application/json; charset=utf-8',
        success: function (data) {
            if (data) {
                fncReset()
                window.location.reload();
            } else {
                console.log("Hata Var")
            }
        },
        error: function (err) {
            alert("Tedarikçi Js Dosyası Eklenirken Hata Oluştu")
        }
    })


})

function codeGenerator() {
    const date = new Date();
    const time = date.getTime();
    const key = time.toString().substring(4);
    $('#receipt').val(key)
}

// Kayıtlı Tedarikçiden Alış Kısmı ---

// Tedarikçiden Yeni Ürün Alma
let globalArrBuying = []
$('#buyingForm').submit((event) => {
    console.log("Tıklandı.");
    event.preventDefault();

    const selectSupplier = $("#selectSupplier").val()
    const selectProduct = $("#selectProduct").val()
    console.log("select product ", selectProduct)
    const receipt = $("#receipt").val()
    const selectUnit = $("#selectUnit").val()
    const amount = $("#amount").val()
    const note = $("#note").val()

    const obj = {
        buyReceiptNo: receipt,
        buyAmount: amount,
        buyNote: note,
        buyUnit: selectUnit,
        buyDate: buyTime(),
        supplier: {
            supId: selectSupplier
        },

        supplierProduct: {
            supProId: selectProduct
        },
    }
    console.log(obj)
    if (select_id != 0) {
        // update
        obj["buyId"] = select_id;
    }

    $.ajax({
        url: './buying/add',
        type: 'POST',
        data: JSON.stringify(obj),
        dataType: 'json',
        contentType: 'application/json; charset=utf-8',
        success: function (data) {
            if (data) {
                fncReset();
                console.log(buyTime())
                allBuyList()
                window.location.reload();
            } else {
                // console.log("Veri dönmedi.")
                fncReset();
            }
        },
        error: function (err) {
            // console.log(err)
            alert("İşlem işlemi sırısında bir hata oluştu!");
        }
    })
})

//Listeleme
function allBuyList() {
    var output;
    $.ajax({
        url: './buying/list',
        type: 'GET',
        contentType: 'application/json; charset=utf-8',
        async:false,
        success: function (data) {
            output = data;
            globalArrBuying = output;
        },
        error: function (err) {
            console.log("allBuy Error : " + err)
        }
    })
    return output;
}

let html = ``

function createRowToDataTable(data) {
console.log("data" , data)
    data.forEach((row) => {
        console.log("row : " , row)
        html += `<tr  role="row" class="odd">
                <td>` + row.buyId + `</td>
                <td>` + row.buyDate + `</td>
                <td>` + row.buyReceiptNo + `</td>
                <td>` + row.supplier.supName + `</td>
                <td>` + row.supplierProduct.supProName + `</td>
                <td>` + row.buyAmount + `</td>
    
                
            </tr>`;
    })
    $('#buyTableBody').html(html);
}

function allBuying() {
    let allBuyingData = allBuyList();
    createRowToDataTable(allBuyingData)
}

allBuying()




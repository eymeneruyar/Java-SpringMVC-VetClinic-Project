//--------------------------------------- Project Information - Start ---------------------------------------//
/* 
    Name: Süleyman KARACA 
    Project Name: Vet Klinik
    Page: Supplier Page JavaScript File
    Version: v1.1
    GitHub: https://github.com/slymnkrc
    Date: 13.09.2021
*/
//--------------------------------------- Project Information - End -----------------------------------------//

//----------------------------------------------------- Tablo Arama - Export - Pegination İşlemleri -----------------------------------------------------//
$(document).ready(function () {
    $('#suppliersTable').DataTable({
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
    $('div.head-label').html('<h2 class="mb-0">Tedarikçiler</h2>');
});
//----------------------------------------------------- Tablo Arama - Export - Pegination İşlemleri -----------------------------------------------------//

//----------------------------------------------------- Suppliers İşlemleri - Start -----------------------------------------------------//

//ADD - START----------------------------------------------------- Suppliers İşlemleri - Add_Start-----------------------------------------------------//
let select_id = 0

function fncReset() {
    console.log("reset")
    $("#supForm").trigger("reset")
    select_id = 0
}

let globalArrSupplier = []
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
    if (select_id != 0) {
        // update
        obj["supId"] = select_id;
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

//ADD - END ----------------------------------------------------- Suppliers İşlemleri - Add_End -----------------------------------------------------//

//List - START ----------------------------------------------------- Suppliers İşlemleri - List_Start -----------------------------------------------------//


function allSupplier() {
    var output;
    $.ajax({
        url: './suppliers/list',
        type: 'GET',
        contentType: 'application/json; charset=utf-8',
        async:false,
        success: function (data) {
            output = data;
            globalArrSupplier = output;
        },
        error: function (err) {
            console.log("allSuppliers Error : " + err)
        }
    })
    return output;
}

let html = ``

function createRowToDataTable(data) {

    data.forEach((row) => {
        html += `<tr  role="row" class="odd">
                <td>` + row.supId + `</td>
                <td>` + row.supName + `</td>
                <td>` + row.supEmail + `</td>
                <td>` + row.supPhone + `</td>
    
                <td class="text-left" >
                    <button value="` + row.supId + `" type="button" class="supplierDelete btn btn-icon btn-outline-danger"><i data-feather="trash-2" ></i></button>
                    <button value="` + row.supId + `" type="button" class="supplierUpdate btn btn-icon btn-outline-primary"><i data-feather="edit" ></i></button>
                </td>
            </tr>`;
    })
    $('#supTableBody').html(html);
}

function allSuppliers() {
    let allSupplierData = allSupplier();
    createRowToDataTable(allSupplierData)
}

allSuppliers()

$(".supplierDelete").click(function () {
    let answer = confirm("Silmek istediğinizden emin misniz?");
    if(answer){
        $.ajax({
            url: `./suppliers/delete/${$(this).attr("value")}`,
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

$(".supplierUpdate").click(function () {
    const itm = globalArrSupplier.find(item => item.supId == $(this).attr("value"));
    console.log("itm : ", itm)
    select_id = itm.supId;
    $("#supName").val(itm.supName);

    $("#supEmail").val(itm.supEmail);

    $("#supPhone").val(itm.supPhone)

    $(window).scrollTop(0);
});

//List - END----------------------------------------------------- Suppliers İşlemleri - List_End -----------------------------------------------------//

// Tedarikçileri Ürünleri Listesini Sayfaya Yollama
function SupplierProductList() {
    $.ajax({
        url: './suppliers/products',
        type: 'GET',
        contentType: 'application/json; charset=utf-8',
        success: function (data) {
            productOption(data)
            console.log("SupplierProductList - data : " + data)
        },
        error: function (err) {
            console.log("SupplierProductList Error : " + err)
        }
    })
}

SupplierProductList()

// Ürün bilgilerini Sayfaya Gönderme
function productOption(supPro) {
    supPro.forEach(item => {
        $('#supProduct').append('<option value="' + item.supProId + '">' + item.supProName + ' - ' + item.supProPrice + ' ₺' + '</option>');
    })
}

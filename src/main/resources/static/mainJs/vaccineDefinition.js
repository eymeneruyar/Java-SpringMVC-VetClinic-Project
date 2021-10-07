//--------------------------------------- Project Information - Start ---------------------------------------//
/* 
    Author: Süleyman KARACA  - Eyüp Eymen ERUYAR
    Project Name: Vet Klinik
    Page: Vaccine Definition Page
    Version: v1.0
    GitHub: https://github.com/eymeneruyar - https://github.com/slymnkrc
    Date: 17.09.2021
*/
//--------------------------------------- Project Information - End -----------------------------------------//

//----------------------------------------------------- Tablo Arama - Export - Pegination İşlemleri -----------------------------------------------------//
$(document).ready(function () {
    $('#vaccineDefinitionTable').DataTable({
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
                        exportOptions: {columns: [1, 2, 3, 4, 5, 6,]}
                    },
                    {
                        extend: 'csv',
                        text: feather.icons['file-text'].toSvg({class: 'font-small-4 mr-50'}) + 'Csv',
                        className: 'dropdown-item',
                        exportOptions: {columns: [1, 2, 3, 4, 5, 6,]}
                    },
                    {
                        extend: 'excel',
                        text: feather.icons['file'].toSvg({class: 'font-small-4 mr-50'}) + 'Excel',
                        className: 'dropdown-item',
                        exportOptions: {columns: [1, 2, 3, 4, 5, 6,]}
                    },
                    {
                        extend: 'pdf',
                        text: feather.icons['clipboard'].toSvg({class: 'font-small-4 mr-50'}) + 'Pdf',
                        className: 'dropdown-item',
                        exportOptions: {columns: [1, 2, 3, 4, 5, 6,]}
                    },
                    {
                        extend: 'copy',
                        text: feather.icons['copy'].toSvg({class: 'font-small-4 mr-50'}) + 'Kopyala',
                        className: 'dropdown-item',
                        exportOptions: {columns: [1, 2, 3, 4, 5, 6,]}
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
    $('div.head-label').html('<h2 class="mb-0">Aşı Arama ve Rapor</h2>');
});
//----------------------------------------------------- Tablo Arama - Export - Pegination İşlemleri -----------------------------------------------------//

//----------------------------------------------------- Aşı Tanımı İşlemleri --- Start -----------------------------------------------------//

// Add_Start----------------------------------------------------- Aşı Tanımı İşlemleri  --- Vaccine_Add Start -----------------------------------------------------//
let select_id = 0
codeGenerator()
function fncReset() {
    console.log("reset")
    $("#formVaccine").trigger("reset")
    codeGenerator()
    select_id = 0
}

let globalArrVaccine=[]
$('#formVaccine').submit((event) => {
    console.log("Tıklandı");
    event.preventDefault();

    const vacName = $("#vacName").val()
    const vacUnit = $("#vacUnit").val()
    const vacCategory = $("#vacCategory").val()
    const vacDetail = $("#vacDetail").val()
    const vacType = $("#vacType").val()
    const vacSupplier = $("#vacSupplier").val()
    const vacBarcode = $("#vacBarcode").val()
    const vacCode = $("#vacCode").val()
    const vacTax = $("#vacTax").val()
    const vacBuyingPrice = $("#vacBuyingPrice").val()
    const vacSalesPrice = $("#vacSalesPrice").val()
    const vacQuantity = $("#vacQuantity").val()

    const obj = {
        vacName: vacName,
        vacUnit: vacUnit,
        vacCategory: vacCategory,
        vacDetail: vacDetail,
        vacType: vacType,
        vacSupplier: vacSupplier,
        vacBarcode: vacBarcode,
        vacCode: vacCode,
        vacTax: vacTax,
        vacBuyingPrice: vacBuyingPrice,
        vacSalesPrice: vacSalesPrice,
        vacQuantity: vacQuantity,
    }
    console.log(obj)
    if (select_id != 0) {
        // update
        obj["vacid"] = select_id;
    }
    $.ajax({
        url: './vaccineDefinition/add',
        type: 'POST',
        data: JSON.stringify(obj),
        dataType: 'json',
        contentType: 'application/json; charset=utf-8',
        success: function (data) {
            if (data) {
                fncReset()
                allVaccine()
                window.location.reload();
            } else {
                console.log("Hata Var")
            }
        },
        error: function (err) {
            alert("Aşı Eklenirken Hata Oluştu")
        }
    })
})

// Add_End----------------------------------------------------- Aşı Tanımı İşlemleri  --- Vaccine_Add End -----------------------------------------------------//

// List_Start----------------------------------------------------- Aşı Tanımı İşlemleri  --- Vaccine_List Start -----------------------------------------------------//

function allVaccine() {
    var output;
    $.ajax({
        url: './vaccineDefinition/list',
        type: 'GET',
        contentType: 'application/json; charset=utf-8',
        async: false,
        success: function (data) {
            output = data;
            console.log("AllVaccine - data : " + data)
            globalArrVaccine = output;
        },
        error: function (err) {
            console.log("allVaccine Error : " + err)
        }
    })
    return output;
}

let html = ``

function createRowToDataTable(data) {
    console.log("data", data)
    data.forEach((row) => {
        if (row.vacid > 0) {
            console.log("row : ", row)
            html += `<tr  role="row" class="odd">
                <td>` + row.vacid + `</td>
                <td>` + row.vacCode + `</td>
                <td>` + row.vacCategory + `</td>
                <td>` + row.vacName + `</td>
                <td>` + row.vacBarcode + `</td>
                <td>` + row.vacBuyingPrice + `</td>
                <td>` + row.vacSalesPrice + `</td>
                
                 <td class="text-left" >
                    <button value="` + row.vacid + `" type="button" class="vaccineDelete btn btn-icon btn-outline-danger"><i data-feather="trash-2" ></i></button>
                    <button value="` + row.vacid + `" type="button" class="vaccineUpdate btn btn-icon btn-outline-primary"><i data-feather="edit" ></i></button>
                </td>
                
            </tr>`;
        }


    })

    $('#vacTableBody').html(html);
}

function allVaccineList() {
    let allVaccinetData = allVaccine();
    createRowToDataTable(allVaccinetData)
}

allVaccineList()
// List_End----------------------------------------------------- Aşı Tanımı İşlemleri  --- Vaccine_List End -----------------------------------------------------//

// Delete_Start----------------------------------------------------- Aşı Tanımı İşlemleri  --- Vaccine_Delete Start -----------------------------------------------------//

$(".vaccineDelete").click(function () {
    let answer = confirm("Silmek istediğinizden emin misniz?");
    if (answer) {
        $.ajax({
            url: `./vaccineDefinition/delete/${$(this).attr("value")}`,
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
// Delete_End----------------------------------------------------- Aşı Tanımı İşlemleri  --- Vaccine_Delete End -----------------------------------------------------//

// Edit_Start----------------------------------------------------- Aşı Tanımı İşlemleri  --- Vaccine_Edit End -----------------------------------------------------//
$(".vaccineUpdate").click(function () {
    const itm = globalArrVaccine.find(item => item.vacid == $(this).attr("value"));
    console.log("itm : ", itm)
    select_id = itm.vacid;
    $("#vacName").val(itm.vacName);
    $("#vacUnit").val(itm.vacUnit).trigger('change');
    $("#vacCategory").val(itm.vacCategory).trigger('change');
    $("#vacDetail").val(itm.vacDetail);
    $("#vacType").val(itm.vacType).trigger('change');
    $("#vacSupplier").val(itm.vacSupplier).trigger('change');
    $("#vacBarcode").val(itm.vacBarcode);
    $("#vacCode").val(itm.vacCode);
    $("#vacTax").val(itm.vacTax).trigger('change');
    $("#vacBuyingPrice").val(itm.vacBuyingPrice);
    $("#vacSalesPrice").val(itm.vacSalesPrice);
    $("#vacQuantity").val(itm.vacQuantity);

    $(window).scrollTop(0);
});
// Edit_End----------------------------------------------------- Aşı Tanımı İşlemleri  --- Vaccine_Edit End -----------------------------------------------------//

//----------------------------------------------------- Aşı Tanımı İşlemleri --- End -----------------------------------------------------//
function codeGenerator() {
    const date = new Date();
    const time = date.getTime();
    const key = time.toString().substring(4);
    $('#vacCode').val(key)
}
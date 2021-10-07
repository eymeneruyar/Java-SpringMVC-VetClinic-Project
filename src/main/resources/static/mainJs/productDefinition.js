//--------------------------------------- Project Information - Start ---------------------------------------//
/* 
    Author: Süleyman KARACA
    Project Name: Vet Klinik
    Page: Product Definition Page JavaScript File
    Version: v1.0
    GitHub:https://github.com/slymnkrc
    Date: 17.09.2021
*/
//--------------------------------------- Project Information - End -----------------------------------------//

//----------------------------------------------------- Tablo Arama - Export - Pegination İşlemleri - Start -----------------------------------------------------//
$(document).ready(function () {
  $('#productDefinitionTable').DataTable({
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
  $('div.head-label').html('<h2 class="mb-0">Ürün Arama ve Rapor</h2>');
});
//----------------------------------------------------- Tablo Arama - Export - Pegination İşlemleri - End-----------------------------------------------------//

//----------------------------------------------------- Ürün Tanımı İşlemleri --- Start -----------------------------------------------------//

// Add----------------------------------------------------- Ürün Tanımı İşlemleri  --- Product_Add Start -----------------------------------------------------//
let select_id = 0
codeGenerator()

function fncReset() {
  console.log("reset")
  $("#formProduct").trigger("reset")
  codeGenerator()
  select_id = 0;
}

let globalArrProduct = []
$('#formProduct').submit((event) => {
  console.log("Tıklandı.");
  event.preventDefault();

  const pName = $("#pName").val()
  const pUnit = $("#pUnit").val()
  const pCategory = $("#pCategory").val()
  const pDetail = $("#pDetail").val()
  const pType = $("#pType").val()
  const pSupplier = $("#pSupplier").val()
  const pBarcode = $("#pBarcode").val()
  const pCode = $("#pCode").val()
  const pTax = $("#pTax").val()
  const pBuyingPrice = $("#pBuyingPrice").val()
  const pSalePrice = $("#pSalePrice").val()
  const pQuantity = $("#pQuantity").val()

  const obj = {
    proName: pName,
    proUnit: pUnit,
    proCategory: pCategory,
    proDetail: pDetail,
    proType: pType,
    proSupplier: pSupplier,
    proBarcode: pBarcode,
    proCode: pCode,
    proTax: pTax,
    proBuyingPrice: pBuyingPrice,
    proSalesPrice: pSalePrice,
    proQuantity: pQuantity,
  }
  console.log(obj)
  if (select_id != 0) {
    // update
    obj["proId"] = select_id;
  }

  $.ajax({
    url: '/productDefinition/add',
    type: 'POST',
    data: JSON.stringify(obj),
    dataType: 'json',
    contentType: 'application/json; charset=utf-8',
    success: function (data) {
      if (data) {
        fncReset();
        allProduct()
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

//----------------------------------------------------- Ürün Tanımı İşlemleri --- Product_Add End -----------------------------------------------------//

// List_Start----------------------------------------------------- Ürün Tanımı İşlemleri  --- Product_List Start -----------------------------------------------------//

function allProduct() {
  var output;
  $.ajax({
    url: './productDefinition/list',
    type: 'GET',
    contentType: 'application/json; charset=utf-8',
    async: false,
    success: function (data) {
      output = data;
      console.log("allProduct - data : " + data)
      globalArrProduct = output;
    },
    error: function (err) {
      console.log("allProduct Error : " + err)
    }
  })
  return output;
}

let html = ``

function createRowToDataTable(data) {
  console.log("data", data)
  data.forEach((row) => {
    if (row.proId > 0) {
      console.log("row : ", row)
      html += `<tr  role="row" class="odd">
                <td>` + row.proId + `</td>
                <td>` + row.proName + `</td>
                <td>` + row.proBarcode + `</td>
                <td>` + row.proBuyingPrice + `</td>
                <td>` + row.proSalesPrice + `</td>
                
                 <td class="text-left" >
                    <button value="` + row.proId + `" type="button" class="productDelete btn btn-icon btn-outline-danger"><i data-feather="trash-2" ></i></button>
                    <button value="` + row.proId + `" type="button" class="productUpdate btn btn-icon btn-outline-primary"><i data-feather="edit" ></i></button>
                </td>
                
            </tr>`;
    }


  })

  $('#proTableBody').html(html);
}

function allProductList() {
  let allProductData = allProduct();
  createRowToDataTable(allProductData)
}

allProductList()

// List_End----------------------------------------------------- Ürün Tanımı İşlemleri  --- Product_List End -----------------------------------------------------//

// Delete_Start----------------------------------------------------- Ürün Tanımı İşlemleri  --- Product_Delete Start -----------------------------------------------------//

$(".productDelete").click(function () {
  let answer = confirm("Silmek istediğinizden emin misniz?");
  if (answer) {
    $.ajax({
      url: `./productDefinition/delete/${$(this).attr("value")}`,
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

// Delete_End----------------------------------------------------- Ürün Tanımı İşlemleri  --- Product_Delete End -----------------------------------------------------//

// Edit_Start----------------------------------------------------- Ürün Tanımı İşlemleri  --- Product_Edit End -----------------------------------------------------//
$(".productUpdate").click(function () {
  const itm = globalArrProduct.find(item => item.proId == $(this).attr("value"));
  console.log("itm : ", itm)
  select_id = itm.proId;
  $("#pName").val(itm.proName);
  $("#pUnit").val(itm.proUnit).trigger('change');
  $("#pCategory").val(itm.proCategory).trigger('change');
  $("#pDetail").val(itm.proDetail);
  $("#pType").val(itm.proType).trigger('change');
  $("#pSupplier").val(itm.proSupplier).trigger('change');
  $("#pBarcode").val(itm.proBarcode);
  $("#pCode").val(itm.proCode);
  $("#pTax").val(itm.proTax).trigger('change');
  $("#pBuyingPrice").val(itm.proBuyingPrice);
  $("#pSalePrice").val(itm.proSalesPrice);
  $("#pQuantity").val(itm.proQuantity);

  $(window).scrollTop(0);
});

// Edit_End----------------------------------------------------- Ürün Tanımı İşlemleri  --- Product_Edit End -----------------------------------------------------//

//----------------------------------------------------- Ürün Tanımı İşlemleri --- End -----------------------------------------------------//


//----------------------------------------------------- Yardımcı Fonksiyonlar --- Start -----------------------------------------------------//
function codeGenerator() {
  const date = new Date();
  const time = date.getTime();
  const key = time.toString().substring(4);
  $('#pCode').val(key)
}

//----------------------------------------------------- Yardımcı Fonksiyonlar --- End -----------------------------------------------------//

//---Get All Suppliers---
function allSuppliers() {
  $.ajax({
    url: './productDefinition/supplier',
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

function supplierOption(suppliersData) {
  suppliersData.forEach(item => {
    $('#pSupplier').append('<option value="' + item.supId + '">' + item.supName + '</option>');
  })
}
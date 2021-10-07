//--------------------------------------- Project Information - Start ---------------------------------------//
/* 
    Author: Eyüp Eymen ERUYAR 
    Project Name: Vet Klinik
    Page: Storage Page JavaScript File
    Version: v1.2
    GitHub: https://github.com/eymeneruyar 
    Date: 18.09.2021
*/
//--------------------------------------- Project Information - End -----------------------------------------//

//----------------------------------------------------- Tablo Arama - Export - Pegination İşlemleri -----------------------------------------------------//
$(document).ready(function() {
    $('#storageTable').DataTable( {
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
                  exportOptions: { columns: [1,2,3] }
                },
                {
                  extend: 'csv',
                  text: feather.icons['file-text'].toSvg({ class: 'font-small-4 mr-50' }) + 'Csv',
                  className: 'dropdown-item',
                  exportOptions: { columns: [1,2,3] }
                },
                {
                  extend: 'excel',
                  text: feather.icons['file'].toSvg({ class: 'font-small-4 mr-50' }) + 'Excel',
                  className: 'dropdown-item',
                  exportOptions: { columns: [1,2,3] }
                },
                {
                  extend: 'pdf',
                  text: feather.icons['clipboard'].toSvg({ class: 'font-small-4 mr-50' }) + 'Pdf',
                  className: 'dropdown-item',
                  exportOptions: { columns: [1,2,3] }
                },
                {
                  extend: 'copy',
                  text: feather.icons['copy'].toSvg({ class: 'font-small-4 mr-50' }) + 'Kopyala',
                  className: 'dropdown-item',
                  exportOptions: { columns: [1,2,3] }
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
    $('div.head-label').html('<h2 class="mb-0">Depo Arama</h2>');
} );
//----------------------------------------------------- Tablo Arama - Export - Pegination İşlemleri -----------------------------------------------------//

//------------------------------------------- Storage Add - Start -------------------------------------------//
let select_id = 0;
let globalArr = []
$("#storageAddForm").submit((event) => {

  event.preventDefault()

  const storageName = $("#storName").val()
  const storageNo = $("#storNo").val()
  const storageStatus = $("#storStatus").val()

  const obj = {
    storName: storageName,
    storNo: storageNo,
    storStatus: storageStatus
  }

  if ( select_id != 0 ) {
    // update
    obj["storId"] = select_id;
  }

  $.ajax({
    url: './storage/add',
    type: 'POST',
    data: JSON.stringify(obj),
    dataType: 'json',
    contentType : 'application/json; charset=utf-8',
    success: function (data) {
      if (data) {
        console.log(data)
        formReset()
        window.location.reload();
      } else {
        console.log("Veri dönmedi.")
      }
    },
    error: function (err) {
      console.log(err)
      alert("İşlem işlemi sırısında bir hata oluştu!");
    }
  })

})

//------------------------------------------- Storage Add - End ---------------------------------------------//

//------------------------------------------- Storage List - Start -------------------------------------------//
function allStorage(){
  var output;
  $.ajax({
    url: './storage/list',
    type: 'get',
    contentType : 'application/json; charset=utf-8',
    async:false,
    success: function (data) {
      console.log(data)
      output = data
      globalArr = output
    },
    error: function (err) {
      console.log(err)
      alert("İşlem işlemi sırısında bir hata oluştu!");
    }
  })
  return output
}
//------------------------------------------- Storage List - End ---------------------------------------------//

//------------------------------------------- Storage Table - Start -------------------------------------------//
let html = ``
function createStorageTable(data){

  data.forEach((row) => {
    console.log(row)
    html += `<tr role="row" class="odd">
                <td>${row.storId}</td>
                <td>${row.storNo}</td>
                <td>${row.storName}</td>
                <td>${row.storStatus}</td>
                <td class="text-left">
                    <button onclick="fncDeleteStorage(${row.storId})" type="button" class="btn btn-icon btn-outline-danger">
                        <i data-feather="trash-2" ></i>
                    </button>
                    <button value="${row.storId}" type="button" class="storageUpdate btn btn-icon btn-outline-primary">
                        <i data-feather="edit" ></i>
                    </button>
                </td>
            </tr>`
  })
  $("#storageTableRow").html(html)
}

function allStorages(){
  let allStoragesData = allStorage()
  createStorageTable(allStoragesData)
}
allStorages()
//------------------------------------------- Storage Table - End ---------------------------------------------//

//------------------------------------------- Storage Delete - Start -------------------------------------------//
function fncDeleteStorage(sid){

  let answer = confirm("Silmek istediğinize emin misiniz?")
  if(answer){
    $.ajax({
      url:"./storage/delete/"+sid,
      type:"delete",
      dataType: 'text',
      success: function (data){
        console.log(typeof data)
        if( data != "0" ){
          alert("Silme İşlemi Başarılı!")
          formReset()
          window.location.reload();
        }else {
          alert("Silme sırasında bir hata oluştu.")
        }
      },
      error: function (err){
        console.log(err)
      }
    })
  }

}

//------------------------------------------- Storage Delete - End ---------------------------------------------//

//------------------------------------------- Storage Update - Start -------------------------------------------//
$(".storageUpdate").click(function () {

  const itm = globalArr.find(item => item.storId = $(this).attr("value"))

  select_id = itm.storId

  $("#storName").val(itm.storName)

  $("#storNo").val(itm.storNo)

  $("#storStatus").val(itm.storStatus)

  $(window).scrollTop(0);

})

//------------------------------------------- Storage Update - End ---------------------------------------------//

//------------------------------------------- Reset Form - Start -------------------------------------------//
function formReset(){
  $("#storageAddForm").trigger("reset")
  codeGenerator()
  select_id = 0
}
//------------------------------------------- Reset Form - End ---------------------------------------------//

//------------------------------------------- Code Generator - Start -------------------------------------------//
function codeGenerator(){
  const date = new Date();
  const time = date.getTime();
  const key = time.toString().substring(4);
  $('#storNo').val( key )
}
codeGenerator()
//------------------------------------------- Code Generator - End ---------------------------------------------//



//--------------------------------------- Project Information - Start ---------------------------------------//
/* 
    Author: Eyüp Eymen ERUYAR 
    Project Name: Vet Klinik
    Page: Laboratory Page JavaScript File
    Version: v1.0
    GitHub: https://github.com/eymeneruyar 
    Date: 13.09.2021
*/
//--------------------------------------- Project Information - End -----------------------------------------//

//----------------------------------------------------- Tablo Arama - Export - Pegination İşlemleri -----------------------------------------------------//
$(document).ready(function() {
    $('#labReportTable').DataTable( {
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
    $('div.head-label').html('<h2 class="mb-0">Laboratuvar Sonuç Arama ve Rapor</h2>');
} );
//----------------------------------------------------- Tablo Arama - Export - Pegination İşlemleri -----------------------------------------------------//


//------------------------------------------- Laboratory Result List - Start -------------------------------------------//
function allLaboratoryResult(){

  $.ajax({
    url: './laboratory/list',
    type: 'get',
    contentType : 'application/json; charset=utf-8',
    success: function (data) {
      console.log(data)
      createLaboratoryResultTable(data)
    },
    error: function (err) {
      console.log(err)
      alert("İşlem işlemi sırısında bir hata oluştu!");
    }
  })

}
allLaboratoryResult()
//------------------------------------------- Laboratory Result List - End ---------------------------------------------//

//------------------------------------------- Laboratory Result Table - Start -------------------------------------------//
let globalArr = []
function createLaboratoryResultTable(data){

  let html = ``
  for (let i = 0; i < data.length; i++) {
    globalArr = data
    const itm = data[i]
    html += `<tr role="row" class="odd">
                <td>${itm.labId}</td>
                <td>${itm.cuNameSurname}</td>
                <td>${itm.paName}</td>
                <td>${itm.paAirTagNo}</td>
                <td>${itm.labType}</td>
                <td>${itm.labDate}</td>
                <td class="text-left">
                    <button onclick="fncLaboratoryResultDelete(${itm.labId})" type="button" class="btn btn-icon btn-outline-danger">
                        <i data-feather="trash-2"></i>
                    </button>
                    <button onclick="fncLaboratoryInfo(${itm.labId})" type="button" class="btn btn-icon btn-outline-info" data-toggle="modal" data-target="#large">
                        <i data-feather="info"></i>
                    </button>
                </td>
             </tr>`
  }
  $("#laboratoryTableRow").html(html)
}
//------------------------------------------- Laboratory Result Table - End ---------------------------------------------//

//------------------------------------------- Laboratory Result Delete - Start -------------------------------------------//
function fncLaboratoryResultDelete(lid){

  let answer = confirm("Silmek istediğinize emin misiniz?")
  if(answer){
    $.ajax({
      url:"./laboratory/delete/"+lid,
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
//------------------------------------------- Laboratory Result Delete - End ---------------------------------------------//

// ------------------------------------------- Laboratory Info - Start -------------------------------------------//
function fncLaboratoryInfo(lid){
    const itm = globalArr[lid];

    $.ajax({
      url:"./laboratory/info/"+lid,
      type:"get",
      contentType : 'application/json; charset=utf-8',
      success: function (data){
        let html = ``
        html += ` <div class="row">
                      <div class="col-md-6">
                           <div class="col-md-12">

                                     <h4>Hasta Bilgileri</h4><hr>

                                     <div class="row">
                                         <div class="col-md-6">
                                             <h5 class="font-weight-bolder">Hasta Adı: </h5>
                                         </div>
                                         <div class="col-md-6">
                                             <span>${data.patient.paName}</span>
                                         </div>
                                     </div>
                                     <div class="row">
                                         <div class="col-md-6">
                                             <h5 class="font-weight-bolder">Hasta Sahibi: </h5>
                                         </div>
                                         <div class="col-md-6">
                                             <span>${data.customer.cuName} ${data.customer.cuSurname}</span>
                                         </div>
                                     </div>
                                     <div class="row">
                                         <div class="col-md-6">
                                             <h5 class="font-weight-bolder">Karne Numarası: </h5>
                                         </div>
                                         <div class="col-md-6">
                                             <span> ${data.patient.paAirTagNo} </span>
                                         </div>
                                     </div>
                                     <div class="row">
                                         <div class="col-md-6">
                                             <h5 class="font-weight-bolder">Yapılan İşlem: </h5>
                                         </div>
                                         <div class="col-md-6">
                                             <span> ${data.labType} </span>
                                         </div>
                                     </div>
                                     <div class="row">
                                         <div class="col-md-6">
                                             <h5 class="font-weight-bolder">İşlem Tarihi: </h5>
                                         </div>
                               <div class="col-md-6">
                                   <span>${data.labDate}</span>
                               </div>
                           </div>
                           <div class="row">
                               <div class="col-md-6">
                                   <h5 class="font-weight-bolder">Rapor: </h5>
                               </div>
                               <div class="col-md-6">
                                   <span>${data.labNote}</span>
                               </div>
                           </div>

                       </div>
                   </div>
                   <div class="col-md-6">
                       <h4>Dosya Bilgileri</h4><hr>
                       <img src="/uploadImages/${data.labFileName}" height="600" width="870"/>
                   </div>
            </div> `

        $("#labInfoModal").html(html)
      },
      error: function (err){
        console.log(err)
      }
    })

}
//------------------------------------------- Laboratory Info - End ---------------------------------------------//

//------------------------------------------- Reset Form - Start -------------------------------------------//
function formReset(){
  $("#laboratoryAddForm").trigger("reset")
  allLaboratoryResult()
  select_id = 0
}
//------------------------------------------- Reset Form - End ---------------------------------------------//



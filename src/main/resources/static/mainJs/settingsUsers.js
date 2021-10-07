//--------------------------------------- Project Information - Start ---------------------------------------//
/* 
    Author: Eyüp Eymen ERUYAR 
    Project Name: Vet Klinik
    Page: Settings Users Page JavaScript File
    Version: v1.5
    GitHub: https://github.com/eymeneruyar 
    Date: 25.09.2021
*/
//--------------------------------------- Project Information - End -----------------------------------------//

//----------------------------------------------------- Tablo Arama - Export - Pegination İşlemleri -----------------------------------------------------//

$(document).ready(function() {
    $('#settingsUsersTable').DataTable( {
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
                  exportOptions: { columns: [1,2,3,4,5,6] }
                },
                {
                  extend: 'csv',
                  text: feather.icons['file-text'].toSvg({ class: 'font-small-4 mr-50' }) + 'Csv',
                  className: 'dropdown-item',
                  exportOptions: { columns: [1,2,3,4,5,6] }
                },
                {
                  extend: 'excel',
                  text: feather.icons['file'].toSvg({ class: 'font-small-4 mr-50' }) + 'Excel',
                  className: 'dropdown-item',
                  exportOptions: { columns: [1,2,3,4,5,6] }
                },
                {
                  extend: 'pdf',
                  text: feather.icons['clipboard'].toSvg({ class: 'font-small-4 mr-50' }) + 'Pdf',
                  className: 'dropdown-item',
                  exportOptions: { columns: [1,2,3,4,5,6] }
                },
                {
                  extend: 'copy',
                  text: feather.icons['copy'].toSvg({ class: 'font-small-4 mr-50' }) + 'Kopyala',
                  className: 'dropdown-item',
                  exportOptions: { columns: [1,2,3,4,5,6] }
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
    $('div.head-label').html('<h2 class="mb-0">Kullanıcı Arama</h2>');
} );
//----------------------------------------------------- Tablo Arama - Export - Pegination İşlemleri -----------------------------------------------------//


//------------------------------------------- Settings Users List - Start -------------------------------------------//
function allUser(){
  var output;
  $.ajax({
    url: './settingsUsers/list',
    type: 'get',
    contentType : 'application/json; charset=utf-8',
    async:false,
    success: function (data) {
      console.log(data)
      output = data
      globalArr = output;
    },
    error: function (err) {
      console.log(err)
      alert("Listeleme işlemi sırısında bir hata oluştu!");
    }
  })
  return output;

}
//------------------------------------------- Settings Users List - End ---------------------------------------------//

//------------------------------------------- Settings Users Table - Start -------------------------------------------//

let html = ``
let globalArr = []
function createUsersTable(data){
  data.forEach((row) => {
    const userType = row.uroleStatus == 1 ? "Secretary" : row.uroleStatus == 2 ? "Doctor" : "Admin"
    html += `<tr role="row" class="odd">
                                    <td>${row.uid}</td>
                                    <td>${row.uname}</td>
                                    <td>${row.usurname}</td>
                                    <td>${row.uemail}</td>
                                    <td>${row.uphone}</td>
                                    <td>${userType}</td>
                                    <td class="text-left">
                                        <button onclick="fncUserDelete(${row.uid})" type="button" class="btn btn-icon btn-outline-danger">
                                            <i data-feather="trash-2" ></i>
                                        </button>
                                        <button onclick="fncUserUpdate(${row.uid})" type="button" class="userUpdate btn btn-icon btn-outline-primary"><i data-feather="edit" ></i></button>
                                    </td>
                                </tr>`
  })
  $("#usersTable").html(html)

}
function allUsers() {
  let allUsersData = allUser();
  createUsersTable(allUsersData)
}
allUsers()
//------------------------------------------- Settings Users Table - End ---------------------------------------------//

//-------------------------------------------- Note delete - Start --------------------------------------------//
function fncUserDelete(uid){
  let answer = confirm("Silmek istediğinize emin misiniz?")
  if(answer){
    $.ajax({
      url:"./settingsUsers/delete/"+uid,
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
//-------------------------------------------- Note delete - Finish --------------------------------------------//

let select_id = 0
/*
$('#userAddForm').submit( (event) => {

  event.preventDefault();
  const name = $("#uName").val()
  const surname = $("#uSurname").val()
  const email = $("#uEmail").val()
  const phone = $("#uPhone").val()
  const status = $("#uRoleStatus").val()
  const pass = $("#uPassword").val()

  const obj = {
    uname: name,
    usurname: surname,
    uemail: email,
    uphone: phone,
    uroleStatus: status,
    upassword: pass
  }

  console.log("Obj: " + obj)
  if (select_id != 0) {
    // update
    obj["uId"] = select_id;
  }

  $.ajax({
    url: '/settingsUsers/add',
    type: 'POST',
    data: JSON.stringify(obj),
    dataType: 'json',
    contentType: 'application/json; charset=utf-8',
    success: function (data) {

      console.log("Data: " + data)
      window.location.reload();

    },
    error: function (err) {
      // console.log(err)
      alert("İşlem işlemi sırısında bir hata oluştu!");
    }
  })

})
*/


/*
$(".userUpdate").click(function () {
  const itm = globalArr.find(item => item.uid == $(this).attr("value"));
  select_id = itm.uId;
  console.log(itm)
  $("#uName").val(itm.uname)
  $("#uSurname").val(itm.usurname)
  $("#uEmail").val(itm.uemail)
  $("#uPhone").val(itm.uphone)
  $("#uRoleStatus").val(itm.roles[0].rid)
  //console.log(itm.roles[0].rid)
})*/

function fncUserUpdate(id){

  $.ajax({
    url:"./settingsUsers/update/"+id,
    type:"get",
    dataType: 'text',
    success: function (data){
      window.location.reload();
    },
    error: function (err){
      console.log(err)
    }
  })

}


//------------------------------------------- Reset Form - Start -------------------------------------------//
function formReset(){
  $("#userAddForm").trigger("reset")
  allUser()
  select_id = 0
}
//------------------------------------------- Reset Form - End ---------------------------------------------//

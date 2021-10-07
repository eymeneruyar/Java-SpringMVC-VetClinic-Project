//--------------------------------------- Project Information - Start ---------------------------------------//
/*
    Name: Eymen ERUYAR
    Project Name: Vet Klinik
    Page: Agenda.js
    Version: v1.1
    GitHub: https://github.com/eymeneruyar
    Date: 21.09.2021
*/
//--------------------------------------- Project Information - End -----------------------------------------//

//-------------------------------------------- Note Add - Start --------------------------------------------//
let select_id = 0;
$('#noteAddForm').submit((event) => {
    event.preventDefault();

    const ntitle = $("#agendaTitle").val()
    const ndetail = $("#agendaNote").val()
    const ndate = $("#agendaDate").val()

    const obj = {
        agendaTitle: ntitle,
        agendaNote: ndetail,
        agendaDate: ndate
    }

    if ( select_id != 0 ) {
        // update
        obj["agendaId"] = select_id;
    }
    $.ajax({
        url: './agenda/add',
        type: 'POST',
        data: JSON.stringify(obj),
        dataType: 'json',
        contentType : 'application/json; charset=utf-8',
        success: function (data) {
            if (data) {
                console.log(data)
                formReset()
            } else {
                console.log("Veri dönmedi.")
            }
        },
        error: function (err) {
            console.log(err)
            alert("Not ekleme işlemi sırısında bir hata oluştu!");
        }
    })
})
//-------------------------------------------- Note Add - Finish --------------------------------------------//


//-------------------------------------------- Note List - Start --------------------------------------------//
function allNoteResult(){
    $.ajax({
        url: './agenda/list',
        type: 'get',
        contentType : 'application/json; charset=utf-8',
        success: function (data) {
            console.log(data)
            createNotePostit(data)
        },
        error: function (err) {
            console.log(err)
            alert("İşlem işlemi sırısında bir hata oluştu!");
        }
    })
}
allNoteResult()
//-------------------------------------------- Note List - Finish --------------------------------------------//

//-------------------------------------------- Note Table - Start --------------------------------------------//
let globalArr = []
function createNotePostit(data){
    let html = ``
    for (let i = 0; i < data.length; i++) {
        globalArr = data
        const itm = data[i]
        html += `<div class="col-lg-4 col-md-6 col-12">
                      <div class="card card-developer-meetup" >
                          <div class="meetup-img-wrapper rounded-top text-center">
                              <img src="/app-assets/images/illustration/email.svg" alt="Meeting Pic" height="170" />
                          </div>
                          <div class="card-body">
                              <div class="meetup-header d-flex align-items-center">
                                  <div class="meetup-day">
                                      <h4 class="mb-0">Not Kayıt Tarihi</h4>
                                      <h6 class="mb-0">${itm.saveDate}</h6>
                                  </div>
                                  <div class="my-auto">
                                      <h4 class="card-title mb-25">${itm.agendaTitle}</h4>
                                      <p class="card-text mb-0">${itm.agendaNote}</p>
                                  </div>
                              </div>
                              <div class="media">
                                  <div class="avatar bg-light-primary rounded mr-1">
                                      <div class="avatar-content">
                                          <i data-feather="calendar" class="avatar-icon font-medium-3"></i>
                                      </div>
                                  </div>
                                  <div class="media-body ">
                                      <h6 class="mb-0">Planlanan Tarih</h6>
                                      <small>${itm.agendaDate}</small>
                                      <div class="text-right">
                                          <button onclick="fncNoteDelete(${itm.agendaId})" type="button" class="btn btn-icon btn-outline-danger ">
                                            <i data-feather="trash-2"></i>
                                          </button>
                                          <button onclick="fncNoteUpdate(${i})" type="button" class="btn btn-icon btn-outline-primary">
                                            <i data-feather="edit"></i>
                                          </button>
                                      </div>
                                      
                                  </div>
                              </div>
                          </div>
                      </div>
                  </div>`
    }
    $("#noteCard").html(html)
}
//-------------------------------------------- Note Table - Finish --------------------------------------------//

//-------------------------------------------- Note delete - Start --------------------------------------------//
function fncNoteDelete(nid){
    let answer = confirm("Silmek istediğinize emin misiniz?")
    if(answer){
        $.ajax({
            url:"./agenda/delete/"+nid,
            type:"delete",
            dataType: 'text',
            success: function (data){
                console.log(typeof data)
                if( data != "0" ){
                    alert("Silme İşlemi Başarılı!")
                    formReset()
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

//-------------------------------------------- Note Update - Start --------------------------------------------//
function fncNoteUpdate(i){
    const itm = globalArr[i];
    select_id = itm.agendaId
    $("#agendaTitle").val(itm.agendaTitle)
    $("#agendaNote").val(itm.agendaNote)
    $("#agendaDate").val(itm.agendaDate)
}
//-------------------------------------------- Note Update - End ----------------------------------------------//

function formReset(){
    $('#noteAddForm').trigger("reset")
    allNoteResult()
    select_id = 0
}
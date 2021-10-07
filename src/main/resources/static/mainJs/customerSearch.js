//--------------------------------------- Project Information - Start ---------------------------------------//
/* 
    Name: Eyüp Eymen ERUYAR 
    Project Name: Vet Klinik
    Page: Customer Search Page JavaScript File
    Version: v1.1
    GitHub: https://github.com/eymeneruyar 
    Date: 12.09.2021
*/
//--------------------------------------- Project Information - End -----------------------------------------//

//----------------------------------------------------- Tablo Arama - Export - Pegination İşlemleri -----------------------------------------------------//
$(document).ready(function() {
  $("#customerSearchTable").DataTable( {

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
  $('div.head-label').html('<h2 class="mb-0">Müşteri Arama ve Rapor</h2>');
} );
//----------------------------------------------------- Tablo Arama - Export - Pegination İşlemleri -----------------------------------------------------//

let select_id = 0;

let globalArrCustomer = []
$('#btnSend').click(function () {
  console.log("Tıklandı.");


  const cuName = $("#cuName").val()
  const cuTax = $("#cuTax").val()
  const cuPhone = $("#cuPhone").val()
  const cuEmail = $("#cuEmail").val()
  const cuCity = $("#cuCity").val()
  const cuSurname = $("#cuSurname").val()
  const cuTaxOffice = $("#cuTaxOffice").val()
  const cuType = $("#cuType").val()
  const cuTown = $("#cuTown").val()
  const cuAddress = $("#cuAddress").val()
  const cuNote = $("#cuNote").val()
  const cuPhone2 = $("#cuPhone2").val()


  const obj = {

    cuName: cuName,
    cuSurname: cuSurname,
    cuTax: cuTax,
    cuTaxOffice: cuTaxOffice,
    cuPhone: cuPhone,
    cuPhone2: cuPhone2,
    cuEmail: cuEmail,
    cuType: cuType,
    cuCity: cuCity,
    cuTown: cuTown,
    cuAddress: cuAddress,
    cuNote: cuNote,
  }
  console.log(obj)
  if (select_id != 0) {
    // update
    obj["cuId"] = select_id;
  }

  $.ajax({
    url: '/customerSearch/cuUpdate',
    type: 'POST',
    data: JSON.stringify(obj),
    dataType: 'json',
    contentType: 'application/json; charset=utf-8',
    success: function (data) {
      if (data) {
        console.log("başarılı")
        window.location.reload();
      } else {
        console.log("başarısız")
      }
    },
    error: function (err) {
      // console.log(data)
      alert("İşlem işlemi sırısında bir hata oluştu!");
    }
  })
})

//-------------------------------------------- Customer List - Start --------------------------------------------//
function allCustomerList(){
  var output;
  $.ajax({
    url: './customerSearch/cuList',
    type: 'get',
    contentType : 'application/json; charset=utf-8',
    async: false,
    success: function (data) {
      console.log(data)
      output = data;
      globalArrCustomer = output;
    },
    error: function (err) {
      console.log(err)
      alert("Müşteri listeleme işlemi sırısında bir hata oluştu!");
    }
  })
  return output;
}
allCustomerList()
//-------------------------------------------- Customer List - Finish --------------------------------------------//

//-------------------------------------------- Customer List Table - Start --------------------------------------------//
let html = ``

function createRowToDataTable(data) {
  console.log("data", data)
  data.forEach((row) => {
    console.log("row : ", row)
    html += `<tr  role="row" class="odd">
                <td>` + row.cuId + `</td>
                <td>` + row.cuName + ' ' + row.cuSurname + `</td>
                <td>` + row.cuPhone + `</td>
                <td>` + row.cuEmail + `</td>
                <td>` + row.cuTax + `</td>
                <td>` + row.cuNote + `</td>
                
                 <td class="text-left" >
                    <button value="` + row.cuId + `" type="button" class="customerDelete btn btn-icon btn-outline-danger"><i data-feather="trash-2" ></i></button>
                    <button value="` + row.cuId + `" type="button" class="customerUpdate btn btn-icon btn-outline-primary"  data-target="#customerUpdateModal"><i data-feather="edit"></i></button>
                </td>
                
            </tr>`;
  })
  $('#customerTableRow').html(html);
}

function allCustomer() {
  let allCustomerData = allCustomerList();
  createRowToDataTable(allCustomerData)
}

allCustomer()
//-------------------------------------------- Customer List Table - Finish --------------------------------------------//

//=========================================== Customer Delete - Start ===========================================//
$(".customerDelete").click(function () {
  let answer = confirm("Silmek istediğinizden emin misniz?");
  if (answer) {
    $.ajax({
      url: `./customerSearch/cuDelete/${$(this).attr("value")}`,
      type: 'delete',
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
//=========================================== Customer Delete - End ===========================================//

//=========================================== Customer Update - Start ===========================================//
$(".customerUpdate").click(function () {
  $('#customerUpdateModal').modal('show');
  const itm = globalArrCustomer.find(item => item.cuId == $(this).attr("value"));
  console.log("itm : ", itm)
  select_id = itm.cuId;
  $("#cuName").val(itm.cuName);
  $("#cuTax").val(itm.cuTax);
  $("#cuPhone").val(itm.cuPhone);
  $("#cuEmail").val(itm.cuEmail);
  $("#cuCity").val(itm.cuCity);
  $("#cuSurname").val(itm.cuSurname);
  $("#cuTaxOffice").val(itm.cuTaxOffice);
  $("#cuType").val(itm.cuType);
  $("#cuTown").val(itm.cuTown);
  $("#cuNote").val(itm.cuNote);
  $("#cuPhone2").val(itm.cuPhone2);
  $("#cuAddress").val(itm.cuAddress);

  $(window).scrollTop(0);
});



//=========================================== Customer Update - End ===========================================//
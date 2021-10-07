//--------------------------------------- Project Information - Start ---------------------------------------//
/*
    Name: Eymen ERUYAR
    Project Name: Vet Klinik
    Page: Customer Add JS
    Version: v1.4
    GitHub: https://github.com/eymeneruyar
    Date: 21.09.2021
*/
//--------------------------------------- Project Information - End -----------------------------------------//

//-------------------------------- Customer and Patient Add Start --------------------------------//
var obj1 = {}
var obj2 = {}
var obj3 = {}
var obj4 = {}
function fncStep1(){
    const cu_name = $("#cuName").val()
    const cu_surname = $("#cuSurname").val()
    const cu_tax = $("#cuTax").val()
    const cu_taxOffice = $("#cuTaxOffice").val()

    obj1 = {
        cuName: cu_name,
        cuSurname: cu_surname,
        cuTax: cu_tax,
        cuTaxOffice: cu_taxOffice
    }
    console.log("obj1 " + cu_name + " " + cu_surname + " " + cu_tax + " " + cu_taxOffice)
}
function fncStep2(){
    const cu_phone = $("#cuPhone").val()
    const cu_phone2 = $("#cuPhone2").val()
    const cu_email = $("#cuEmail").val()
    const cu_type = $("#cuType").val()

    obj2 = {
        cuPhone: cu_phone,
        cuPhone2: cu_phone2,
        cuEmail: cu_email,
        cuType: cu_type
    }
    console.log("obj2 " + cu_phone + " " + cu_phone2 + " " + cu_email + " " + cu_type)
    console.log(obj1+obj2)
}
function fncStep3(){
    const cu_city = $("#citySelect").val()
    const cu_town = $("#townSelect").val()
    const cu_address = $("#cuAddress").val()

    obj3 = {
        cuCity: cu_city,
        cuTown: cu_town,
        cuAddress: cu_address
    }

}
function fncStep4(){
    const cu_note = $("#cuNote").val()

    obj4 = {
        cuNote: cu_note
    }

    const objData = {
        ...obj1,
        ...obj2,
        ...obj3,
        ...obj4
    }
    console.log(objData)

    $.ajax({
        url: './customer/cuAdd',
        type: 'POST',
        data: JSON.stringify(objData),
        dataType: 'json',
        contentType : 'application/json; charset=utf-8',
        success: function (data) {
            if (data) {
                console.log(data)
                fncResetCustomerForms()
                window.location.reload();
            } else {
                console.log("Data is not found")
            }
        },
        error: function (err) {
            console.log(err)
            alert("İşlem işlemi sırısında bir hata oluştu!");
        }
    })

}



//-------------------------------- Customer and Patient Add End ----------------------------------//

//-------------------------------------------- City and Town List Start --------------------------------------------//

//City List
function allCities(){

    $.ajax({
        url: './address/cityList',
        type: 'GET',
        contentType: 'application/json; charset=utf-8',
        success: function (data) {
            cityData = data.result;
            cityOption(cityData)
            //console.log("Cities : ", data);
        },
        error: function (err) {
            console.log(err)
        }
    })

}
allCities()
//Towns List
function allTowns(id){

    $.ajax({
        url: './address/townList/' + id,
        type: 'GET',
        contentType: 'application/json; charset=utf-8',
        success: function (data) {
            townData = data.result;
            townOption(townData)
            //console.log("Towns : ", data);
        },
        error: function (err) {
            console.log(err)
        }
    })

}

// City bilgilerini selectList'e ekleme
function cityOption(cityData) {
    cityData.forEach(item => {
        $('#citySelect').append('<option value="' + item.cityKey + '"> ' + item.cityKey + ' - ' + item.name + '</option>');
    })
}

// Town bilgilerini selectList'e ekleme
function townOption(townData) {
    townData.forEach(item => {
        $('#townSelect').append('<option value="' + item.name + '"> ' + item.townKey + ' - ' + item.name + '</option>');
    })
}

$('#citySelect').change(function (){
    //console.log("----------------------------------")
    //console.log($(this).val())

    $('#townSelect').empty();
    $('#townSelect').append('<option value="default"> Lütfen Seçim Yapınız</option>');

    if ($(this).val() !== "default") {
        $('#townSelect').attr("disabled", false);  //ilçe selectlistini enable eder
        allTowns($(this).val());
    }
})

//-------------------------------------------- City and Town List End ---------------------------------------------//

//-------------------------------------------- Patient Add Start --------------------------------------------//

$("#patientAddForm").submit((event) => {

    event.preventDefault()

    const customer = $("#customerId").val()
    const pa_name = $("#paName").val()
    const pa_chipNo = $("#paChipNo").val()
    const pa_airTagNo = $("#paAirTagNo").val()
    const pa_birthDate = $("#paBirthDate").val()
    const pa_type = $("#paType").val()
    const pa_kind = $("#paKind").val()
    const pa_color = $("#paColor").val()
    const pa_sexType = $("#paSexType").val()
    const pa_spay = $("#paSpay").val()

    const obj = {
        customerId:customer,
        paName:pa_name,
        paChipNo:pa_chipNo,
        paAirTagNo:pa_airTagNo,
        paBirthDate:pa_birthDate,
        paType:pa_type,
        paKind:pa_kind,
        paColor:pa_color,
        paSexType:pa_sexType,
        paSpay:pa_spay
    }

    $.ajax({
        url: './customer/paAdd',
        type: 'POST',
        data: JSON.stringify(obj),
        dataType: 'json',
        contentType : 'application/json; charset=utf-8',
        success: function (data) {
            if (data) {
                console.log(data)
                fncResetPatientForms()
            } else {
                console.log("Data is not found")
            }
        },
        error: function (err) {
            console.log(err)
            alert("İşlem işlemi sırısında bir hata oluştu!");
        }
    })

})

//-------------------------------------------- Patient Add End ----------------------------------------------//

//-------------------------------------------- Form Patient Reset Start ----------------------------------------------//
function fncResetPatientForms(){
    customer = $("#customerId").val(" ")
    pa_name = $("#paName").val(" ")
    pa_chipNo = $("#paChipNo").val(" ")
    pa_airTagNo = $("#paAirTagNo").val(" ")
    pa_birthDate = $("#paBirthDate").val(" ")
    pa_type = $("#paType").val(" ")
    pa_kind = $("#paKind").val(" ")
    pa_color = $("#paColor").val(" ")
    pa_sexType = $("#paSexType").val(" ")
    pa_spay = $("#paSpay").val(" ")
}
//-------------------------------------------- Form Patient Reset End ------------------------------------------------//

//-------------------------------------------- Form Customer Reset Start ----------------------------------------------//
function fncResetCustomerForms(){
    $("#step1").trigger("reset")
    $("#step2").trigger("reset")
    $("#step3").trigger("reset")
    $("#step4").trigger("reset")
}
//-------------------------------------------- Form Customer Reset End ------------------------------------------------//


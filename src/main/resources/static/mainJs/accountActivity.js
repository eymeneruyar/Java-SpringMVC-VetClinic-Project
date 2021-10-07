
//--------------------------------------- Project Information - Start ---------------------------------------//
/*
    Name: Eymen ERUYAR
    Project Name: Vet Klinik
    Page: Account Activities JS
    Version: v1.4
    GitHub: https://github.com/eymeneruyar
    Date: 21.09.2021
*/
//--------------------------------------- Project Information - End -----------------------------------------//
function fncAccountActivity (){

    $.ajax({
        url:"http://localhost:8080/accountActivity",
        success: function (data){
            //console.log(data)
            //console.log(data.result.roleInfo)

            let role = data.result.roleInfo

            $("#nameAndSurname").text(data.result.nameInfo + ' ' + data.result.surnameInfo)

            //Rol ifadeleri düzenlendi.
            if(role === "[ROLE_SECRETARY] "){
                $("#role").text(role.replace("[ROLE_SECRETARY] ","Sekreter"))
            }else if(role === "[ROLE_DOCTOR] "){
                $("#role").text(role.replace("[ROLE_DOCTOR] ","Doktor"))
            }else{
                $("#role").text(role.replace("[ROLE_ADMIN] ","Admin"))
            }

            //skeletonProject 'de bulunan avatar resim kısmı
            htmlNavbarImage = `<img class="round" src="uploadImages/${data.result.imageFile}" alt="avatar" height="40" width="40">`
            $("#imageProfile").html(htmlNavbarImage)

            //Account sayfasında bulunan profil bölümü
            htmlAccountImage = `<img src="uploadImages/${data.result.imageFile}" class="rounded mr-50" alt="profile image" height="80" width="80" />`
            $("#accountImage").html(htmlAccountImage)

        },
        error: function (err){
            console.log(err)
        }
    })

}
fncAccountActivity ()
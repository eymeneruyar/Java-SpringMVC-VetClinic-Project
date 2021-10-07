//--------------------------------------- Project Information - Start ---------------------------------------//
/*
    Author: Süleyman KARACA
    Project Name: Vet Klinik
    Page: Forgot Password Controller
    Version: v1.0
    GitHub: https://github.com/slymnkrc
    Date: 20.09.2021
*/
//--------------------------------------- Project Information - End -----------------------------------------//
package vetcilinic.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("forgotPassword")
public class ForgotPasswordController {

    @GetMapping("")
    public String forgot(){
        return "forgotPassword";
    }

}

//--------------------------------------- Project Information - Start ---------------------------------------//
/*
    Name: Eymen ERUYAR
    Project Name: Vet Klinik
    Page: Login Controller
    Version: v1.0
    GitHub: https://github.com/eymeneruyar
    Date: 20.09.2021
*/
//--------------------------------------- Project Information - End -----------------------------------------//
package vetcilinic.Controller;

import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import vetcilinic.Entities.User;
import vetcilinic.Services.UserService;

@Controller
@RequestMapping("/login")
public class LoginController {

    final UserService uService;
    public LoginController(UserService uService) {
        this.uService = uService;
    }

    @GetMapping("")
    public String login(Model model){

        return "login";
    }


}

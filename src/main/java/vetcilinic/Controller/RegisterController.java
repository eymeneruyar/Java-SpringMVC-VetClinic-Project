//--------------------------------------- Project Information - Start ---------------------------------------//
/*
    Name: Eymen ERUYAR
    Project Name: Vet Klinik
    Page: Register Controller
    Version: v1.0
    GitHub: https://github.com/eymeneruyar
    Date: 21.09.2021
*/
//--------------------------------------- Project Information - End -----------------------------------------//
package vetcilinic.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import vetcilinic.Entities.Role;
import vetcilinic.Entities.User;
import vetcilinic.Repositories.RoleRepository;
import vetcilinic.Services.UserService;
import vetcilinic.Utils.Util;

import javax.naming.AuthenticationException;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/register")
public class RegisterController {

    final RoleRepository rRepo;
    final UserService uService;
    public RegisterController(RoleRepository rRepo, UserService uService) {
        this.rRepo = rRepo;
        this.uService = uService;
    }

    @GetMapping("")
    public String register(){
        return "register";
    }

    @PostMapping("")
    public String register(User user){

        try {

            int roleId = 1; //Secretary

            user.setEnabled(true);
            user.setTokenExpired(true);

            Role role = rRepo.findById(roleId).get();

            List<Role> roles = new ArrayList<>();
            roles.add(role);

            user.setRoles(roles);
            user.setURoleStatus(roleId);
            uService.register(user);

            return "redirect:/login";

        } catch (AuthenticationException e) {
            String error = "Kayıt sırasında bir hata oluştu!" + e;
            Util.logger(error,User.class);
            System.err.println(error);
        }

        return "register";

    }

}

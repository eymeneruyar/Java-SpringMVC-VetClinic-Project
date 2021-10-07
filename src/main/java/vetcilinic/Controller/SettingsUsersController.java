//--------------------------------------- Project Information - Start ---------------------------------------//
/*
    Name: Eymen ERUYAR
    Project Name: Vet Klinik
    Page: Setting Users Controller
    Version: v1.2
    GitHub: https://github.com/eymeneruyar
    Date: 21.09.2021
*/
//--------------------------------------- Project Information - End -----------------------------------------//
package vetcilinic.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import vetcilinic.Entities.Role;
import vetcilinic.Entities.Sales;
import vetcilinic.Entities.User;
import vetcilinic.Repositories.RoleRepository;
import vetcilinic.Repositories.UserRepository;
import vetcilinic.Services.UserService;
import vetcilinic.Utils.Util;

import javax.naming.AuthenticationException;
import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/settingsUsers")
public class SettingsUsersController {

    final UserRepository uRepo;
    final RoleRepository roleRepo;
    final UserService uService;
    User userUpdate = new User();
    public SettingsUsersController(UserRepository uRepo, RoleRepository roleRepo, UserService uService) {
        this.uRepo = uRepo;
        this.roleRepo = roleRepo;
        this.uService = uService;
    }

    @GetMapping("")
    public String settingsUsers(Model model){
        model.addAttribute("roleList",roleRepo.findAll());
        model.addAttribute("createAccount",new User());
        if( userUpdate != null){
            model.addAttribute("us",userUpdate);
        }
        return "settingsUsers";
    }

    @PostMapping("/add")
    public String add(@Valid @ModelAttribute("createAccount") User user,BindingResult result) throws AuthenticationException {

        System.out.println("İlk hali: " + user);

        if(!result.hasErrors()){

            if(userUpdate.getUId() != null && userUpdate.getUId() > 0 ){
                user.setUId(userUpdate.getUId());
            }

            int roleId = user.getURoleStatus();
            //System.out.println("RoleId: " + roleId);

            user.setEnabled(true);
            user.setTokenExpired(true);

            Role role = roleRepo.findById(roleId).get();

            List<Role> roles = new ArrayList<>();
            roles.add(role);

            user.setRoles(roles);
            user.setURoleStatus(roleId);
            user.setUProfileImage("defaultProfileImage.png");
            uService.register(user);
            userUpdate = new User();

            return "redirect:/settingsUsers";

        }else {
            String error = "Hata: " + result.getAllErrors();
            Util.logger(error, User.class);
            System.err.println(error);
        }

        //System.out.println("Son hali: " + user);

        return "settingsUsers";

    }

    /*
    @PostMapping("/add")
    @ResponseBody
    public String add( @RequestBody User user,BindingResult result) throws AuthenticationException {

        System.out.println("İlk hali: " + user);

        if(!result.hasErrors()){
            int roleId = user.getURoleStatus();
            //System.out.println("RoleId: " + roleId);

            user.setEnabled(true);
            user.setTokenExpired(true);

            Role role = roleRepo.findById(roleId).get();

            List<Role> roles = new ArrayList<>();
            roles.add(role);

            user.setRoles(roles);
            user.setURoleStatus(roleId);
            user.setUProfileImage("defaultProfileImage.png");
            uService.register(user);

            //user = new User();

            return "redirect:/settingsUsers";

        }else {
            String error = "Hata: " + result.getAllErrors();
            Util.logger(error, User.class);
            System.err.println(error);
        }

        //System.out.println("Son hali: " + user);

        return "settingsUsers";

    }*/

    @ResponseBody
    @GetMapping("/list")
    public List<User> list(){
        System.out.println(uRepo.findAll());
        return uRepo.findAll();
    }

    @ResponseBody
    @DeleteMapping("/delete/{stUid}")
    public String delete(@PathVariable String stUid){
        String status = "0";
        try {
            int uid = Integer.parseInt(stUid);
            uRepo.deleteById(uid);
            status = "1";
        } catch (Exception e) {
            String error = "Silme işlemi sırasında bir hata oluştu!" + e;
            Util.logger(error, User.class);
            System.err.println(error);
        }
        return status;
    }

    @ResponseBody
    @GetMapping("/update/{stId}")
    public String update(@PathVariable String stId){
        try {
            int uid = Integer.parseInt(stId);
            userUpdate = uRepo.findById(uid).get();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect/settingsUsers";
    }

}

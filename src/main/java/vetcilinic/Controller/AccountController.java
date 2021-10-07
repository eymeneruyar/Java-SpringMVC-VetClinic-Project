//--------------------------------------- Project Information - Start ---------------------------------------//
/*
    Name: Eymen ERUYAR
    Project Name: Vet Klinik
    Page: Account Controller
    Version: v1.2
    GitHub: https://github.com/eymeneruyar
    Date: 23.09.2021
*/
//--------------------------------------- Project Information - End -----------------------------------------//
package vetcilinic.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import vetcilinic.Entities.AccountActivities;
import vetcilinic.Entities.User;
import vetcilinic.Repositories.AccountActivityRepository;
import vetcilinic.Repositories.UserRepository;
import vetcilinic.Services.UserService;
import vetcilinic.Utils.Util;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.Optional;
import java.util.UUID;

@Controller
@RequestMapping("/account")
public class AccountController {

    final UserService uService;
    final UserRepository uRepo;
    final AccountActivityRepository aRepo;
    String error = "  ";
    public AccountController(UserService uService, UserRepository uRepo, AccountActivityRepository aRepo) {
        this.uService = uService;
        this.uRepo = uRepo;
        this.aRepo = aRepo;
    }

    @GetMapping("")
    public String account(Model model){

        AccountActivities activeUser = uService.info();
        Optional<User> oUser = uRepo.findByuEmailEqualsIgnoreCase(activeUser.getEmailInfo());
        if(oUser.isPresent()){
            User user = oUser.get();
            model.addAttribute("usInfo",user);
        }

        if(!error.equals(" ")){
            model.addAttribute("error",error);
            error = " ";
        }

        return "account";
    }

    @PostMapping("/changePass")
    public String changePassword(
            Model model,
            @RequestParam(defaultValue = "12345") String newPass,
            @RequestParam(defaultValue = "12345") String reNewPass){

        if(newPass.equals(reNewPass)){
            AccountActivities activeUser = uService.info();
            Optional<User> oUser = uRepo.findByuEmailEqualsIgnoreCase(activeUser.getEmailInfo());
            if(oUser.isPresent()){
                User user = oUser.get();
                user.setUPassword(uService.encoder().encode(reNewPass));
                uRepo.save(user);
            }
            return "redirect:/logout";
        }else{
            error = "Şifre değiştirme işlemi başarısız! Yeni şifre ve tekrarı uyuşmuyor. Lütfen şifrenizi kontrol ediniz!";
            Util.logger(error,User.class);
        }
        return "redirect:/account";
    }

    @PostMapping("/uploadImage")
    public String upload(@RequestParam("imageName") MultipartFile file){

        if( file.isEmpty() ){
            String fileError = "Lütfen bir dosya seçiniz.";
            Util.logger(fileError,User.class);
            System.out.println(fileError);
            return "redirect:/account";
        }

        String fileName = StringUtils.cleanPath(file.getOriginalFilename());
        String ext = fileName.substring(fileName.length()-5, fileName.length());
        String uui = UUID.randomUUID().toString();
        fileName = uui + ext;
        try {
            Path path = Paths.get(Util.UPLOAD_DIR + fileName);
            Files.copy(file.getInputStream(), path, StandardCopyOption.REPLACE_EXISTING);
        } catch (IOException e) {
            e.printStackTrace();
        }

        AccountActivities activeUser = uService.info();
        Optional<User> oUser = uRepo.findByuEmailEqualsIgnoreCase(activeUser.getEmailInfo());
        if(oUser.isPresent()){
            User user = oUser.get();
            user.setUProfileImage(fileName);
            activeUser.setImageFile(fileName);
            uRepo.save(user);
            aRepo.save(activeUser);
        }

        return "redirect:/account";

    }

    @GetMapping("/deleteImage")
    public String deleteImage(){

        AccountActivities activeUser = uService.info();
        Optional<User> oUser = uRepo.findByuEmailEqualsIgnoreCase(activeUser.getEmailInfo());
        if(oUser.isPresent()){
            User user = oUser.get();
            try{
                //File delete
                String deleteFilePath = user.getUProfileImage();
                File file = new File(Util.UPLOAD_DIR + deleteFilePath);
                file.delete();
                user.setUProfileImage(null);
                uRepo.save(user);
                System.out.println("Silme işlemi başarılı");
            }catch (Exception e){
                String profileImageDeleteError = "Profil resmini silerken bir hata oluştu!" + e;
                Util.logger(profileImageDeleteError,User.class);
                System.err.println(profileImageDeleteError);
            }

        }

        return "redirect:/account";
    }



}

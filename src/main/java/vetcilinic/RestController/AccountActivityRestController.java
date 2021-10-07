//--------------------------------------- Project Information - Start ---------------------------------------//
/*
    Name: Eymen ERUYAR
    Project Name: Vet Klinik
    Page: Account Activity Rest Controller
    Version: v1.1
    GitHub: https://github.com/eymeneruyar
    Date: 22.09.2021
*/
//--------------------------------------- Project Information - End -----------------------------------------//
package vetcilinic.RestController;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import vetcilinic.Services.UserService;

import java.util.LinkedHashMap;
import java.util.Map;

@RestController
@RequestMapping("")
public class AccountActivityRestController {

    final UserService uService;
    public AccountActivityRestController(UserService uService) {
        this.uService = uService;
    }

    @GetMapping("/accountActivity")
    public Map<String,Object> list(){
        Map<String,Object> hm = new LinkedHashMap<>();
        hm.put("status",true);
        hm.put("result",uService.info());
        return hm;
    }

}

//--------------------------------------- Project Information - Start ---------------------------------------//
/*
    Author: Süleyman KARACA
    Project Name: Vet Klinik
    Page: Storage Page Controller File
    Version: v1.0
    GitHub: https://github.com/slymnkrc
    Date: 18.09.2021
*/
//--------------------------------------- Project Information - End -----------------------------------------//
package vetcilinic.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import vetcilinic.Entities.Storage;
import vetcilinic.Entities.User;
import vetcilinic.Repositories.StorageRepository;
import vetcilinic.Utils.Util;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/storage")
public class StorageController {

    final StorageRepository sRepo;
    public StorageController(StorageRepository sRepo) {
        this.sRepo = sRepo;
    }


    @GetMapping("")
    public String storage(){
        return "storage";
    }

    @ResponseBody
    @PostMapping("/add")
    public Storage add(@RequestBody @Valid Storage s, BindingResult result){

        Storage storage = new Storage();

        if(!result.hasErrors()){
            storage = sRepo.saveAndFlush(s);
        }
        else{
            String error = "Validation Error: " + result.getAllErrors();
            Util.logger(error, Storage.class);
            System.err.println(error);
        }

        return storage;

    }

    @ResponseBody
    @GetMapping("/list")
    public List<Storage> list(){
        return sRepo.findAll();
    }

    @ResponseBody
    @DeleteMapping("/delete/{stStoreId}")
    public String delete(@PathVariable String stStoreId){

        String status = "0";

        try {
            int storId = Integer.parseInt(stStoreId);
            sRepo.deleteById(storId);
            status = "1";
        } catch (Exception e) {
            String error = "Silme işlemi sırasında bir hata oluştu!" + e;
            Util.logger(error, Storage.class);
            System.err.println(error);
        }
        return status;

    }

}

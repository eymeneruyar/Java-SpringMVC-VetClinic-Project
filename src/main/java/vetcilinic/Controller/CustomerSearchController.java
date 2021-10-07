//--------------------------------------- Project Information - Start ---------------------------------------//
/*
    Name: Eymen ERUYAR
    Project Name: Vet Klinik
    Page: Customer Search Controller
    Version: v1.2
    GitHub: https://github.com/eymeneruyar
    Date: 20.09.2021
*/
//--------------------------------------- Project Information - End -----------------------------------------//
package vetcilinic.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import vetcilinic.Entities.Customer;
import vetcilinic.Repositories.CustomerRepository;
import vetcilinic.Utils.Util;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("customerSearch")
public class CustomerSearchController {

    Customer cUpdate = new Customer();
    final CustomerRepository cuRepo;
    public CustomerSearchController(CustomerRepository cuRepo) {
        this.cuRepo = cuRepo;
    }


    @GetMapping("")
    public String customerSearch(){
        return "customerSearch";
    }

    //--------------------------------------- Customer List Section - Start ---------------------------------------//
    @ResponseBody
    @GetMapping("/cuList")
    public List<Customer> customerList(){
        return cuRepo.findAll();
    }
    //--------------------------------------- Customer List Section - End -----------------------------------------//

    //--------------------------------------- Customer Delete Section - Start ---------------------------------------//
    @ResponseBody
    @DeleteMapping("/cuDelete/{stCid}")
    public String delete(@PathVariable String stCid){
        String status = "0";
        System.out.println("stNid: " + stCid);
        try {
            int cuId = Integer.parseInt(stCid);
            cuRepo.deleteById(cuId);
            status = "1";
        } catch (Exception e) {
            String customerDeleteError = "Silme işlemi sırasında bir hata oluştu!" + e;
            Util.logger(customerDeleteError,Customer.class);
            System.err.println(customerDeleteError);
        }
        return status;
    }
    //--------------------------------------- Customer Delete Section - End -----------------------------------------//

    //--------------------------------------- Customer Update Section - Start ---------------------------------------//
    @ResponseBody
    @PostMapping("/cuUpdate")
    public Customer customerUpdate(@Valid @RequestBody Customer c){

        System.out.println("Gelen nesne:" + c);
        Customer checkData = cuRepo.findById(c.getCuId()).get();

        try {
           if(c.getCuId() != null && c.getCuId() > 0 && checkData != null){
               cuRepo.saveAndFlush(c);
           }
        } catch (Exception e) {
            String customerUpdateError = "Güncelleme işlemi sırasında bir hata oluştu!" + e;
            Util.logger(customerUpdateError,Customer.class);
            System.err.println(customerUpdateError);
        }
        return checkData;
    }
    //--------------------------------------- Customer Update Section - End -----------------------------------------//

}

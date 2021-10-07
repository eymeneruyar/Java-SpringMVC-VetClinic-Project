//--------------------------------------- Project Information - Start ---------------------------------------//
/*
    Name: Eymen ERUYAR
    Project Name: Vet Klinik
    Page: Customer Controller
    Version: v1.2
    GitHub: https://github.com/eymeneruyar
    Date: 20.09.2021
*/
//--------------------------------------- Project Information - End -----------------------------------------//
package vetcilinic.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import vetcilinic.Entities.Customer;
import vetcilinic.Entities.Patient;
import vetcilinic.Repositories.CustomerRepository;
import vetcilinic.Repositories.PatientRepository;
import vetcilinic.Utils.Util;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/customer")
public class CustomerController {

    final CustomerRepository cuRepo;
    final PatientRepository paRepo;
    public CustomerController(CustomerRepository cuRepo, PatientRepository paRepo) {
        this.cuRepo = cuRepo;
        this.paRepo = paRepo;
    }

    @GetMapping("")
    public String customer(Model model){

        model.addAttribute("patient",new Patient());
        model.addAttribute("customerList",cuRepo.findAll());

        return "customerAdd";
    }

    //Add customer
    @ResponseBody
    @PostMapping("/cuAdd")
    public Customer cuAdd(@RequestBody @Valid Customer cu,BindingResult result){

        Customer customer = new Customer();

        if (!result.hasErrors()) {
            customer = cuRepo.save(cu);
        } else {
            String customerAddError = "Customer add Validation Error: " + result.getAllErrors();
            Util.logger(customerAddError,Customer.class);
            System.out.println(customerAddError);
        }
        return customer;
    }

    //Add patient
    @ResponseBody
    @PostMapping("/paAdd")
    public Patient paAdd(@RequestBody @Valid Patient pa, BindingResult result){

        Patient patient = new Patient();
        if(!result.hasErrors()){

            Customer c = cuRepo.findById(pa.getCustomerId()).get();
            pa.setCustomer(c);
            patient = paRepo.save(pa);

        }else{
            String patientAddError = "Patient add Validation Error: " + result.getAllErrors();
            Util.logger(patientAddError,Patient.class);
            System.out.println(patientAddError);
        }

        return patient;
    }




}

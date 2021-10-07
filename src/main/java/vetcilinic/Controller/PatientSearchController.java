//--------------------------------------- Project Information - Start ---------------------------------------//
/*
    Name: Süleyman KARACA
Project Name: Vet Klinik
Page: Patient Controller
Version: v1.2
GitHub: https://github.com/slymnkrc
    Date: 20.09.2021
*/
//--------------------------------------- Project Information - End -----------------------------------------//


package vetcilinic.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import vetcilinic.Entities.Customer;
import vetcilinic.Entities.Patient;
import vetcilinic.Repositories.CustomerRepository;
import vetcilinic.Repositories.PatientRepository;

import java.util.List;

@Controller
@RequestMapping("/patientSearch")
public class PatientSearchController {

    final PatientRepository paRepo;
    final CustomerRepository cuRepo;

    public PatientSearchController(PatientRepository paRepo, CustomerRepository cuRepo) {
        this.paRepo = paRepo;
        this.cuRepo = cuRepo;
    }

    @GetMapping("")
    public String patientSearch() {
        return "patientSearch";
    }


    // patient list
    @ResponseBody
    @GetMapping("/paList")
    public List<Patient> patientList(){
        return paRepo.findAll();
    }

    // patient Delete
    @ResponseBody
    @DeleteMapping("/paDelete/{stPid}")
    public String delete(@PathVariable String stPid){
        String status = "0";
        System.out.println("stNid: " + stPid);
        try {
            int paId = Integer.parseInt(stPid);
            paRepo.deleteById(paId);
            status = "1";
        } catch (Exception e) {
            System.err.println("Silme işlemi sırasında bir hata oluştu!" + e);
        }
        return status;
    }

    // patient update
    @ResponseBody
    @PostMapping("/paUpdate")
    public Patient patientUpdate(@RequestBody Patient p){

        System.out.println("Gelen nesne:" + p);
        Patient checkData = paRepo.findById(p.getPaId()).get();

        try {
            if(p.getPaId() != null && p.getPaId() > 0 && checkData != null){
                paRepo.saveAndFlush(p);
            }
        } catch (Exception e) {
            System.err.println("Güncelleme işlemi sırasında bir hata oluştu!" + e);
        }
        return checkData;
    }
    // müşteri bilgileri
    @GetMapping("/customers")
    @ResponseBody
    public List<Customer> customerList() {
        return cuRepo.findAll();
    }
}

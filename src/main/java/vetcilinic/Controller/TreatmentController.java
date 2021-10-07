//--------------------------------------- Project Information - Start ---------------------------------------//
/*
    Name: Süleyman KARACA
    Project Name: Vet Klinik
    Page: Treatment Controller
    Version: v1.2
    GitHub: https://github.com/slymnkrc
    Date: 23.09.2021
*/
//--------------------------------------- Project Information - End -----------------------------------------//
package vetcilinic.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import vetcilinic.Entities.*;
import vetcilinic.Repositories.CustomerRepository;
import vetcilinic.Repositories.PatientRepository;
import vetcilinic.Repositories.TreatmentRepository;
import vetcilinic.Repositories.VaccineRepository;
import vetcilinic.Utils.Util;

import javax.transaction.Transactional;
import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/treatment")
public class TreatmentController {

    final CustomerRepository cuRepo;
    final PatientRepository paRepo;
    final VaccineRepository vaRepo;
    final TreatmentRepository treRepo;
    public TreatmentController(CustomerRepository cuRepo, PatientRepository paRepo, VaccineRepository vaRepo, TreatmentRepository treRepo) {
        this.cuRepo = cuRepo;
        this.paRepo = paRepo;
        this.vaRepo = vaRepo;
        this.treRepo = treRepo;
    }

    @GetMapping("")
    public String TreatmentController() {
        return "treatment";
    }

    @GetMapping("/customers")
    @ResponseBody
    public List<Customer> cuList() {
        return cuRepo.findAll();
    }

    @GetMapping("/patients/{cuId}")
    @ResponseBody
    public List<Patient> paList(@PathVariable Integer cuId) {
        return paRepo.findByCustomer_CuIdEquals(cuId);
    }

    @GetMapping("/vaccines")
    @ResponseBody
    public List<Vaccine> vaList() {
        return vaRepo.findAll();
    }

    @PostMapping("/add")
    @ResponseBody
    public Treatment add(@RequestBody @Valid Treatment treatment, BindingResult bindingResult) {
        if (!bindingResult.hasErrors()) {

            Customer customer = cuRepo.findById(treatment.getCustomer().getCuId()).get();
            treatment.setCustomer(customer);

            Patient patient = paRepo.findById(treatment.getPatient().getPaId()).get();
            treatment.setPatient(patient);

            Vaccine vaccine = vaRepo.findById(treatment.getVaccine().getVacid()).get();
            treatment.setVaccine(vaccine);

            Treatment t = treRepo.save(treatment);
            return t;
        }else{
            String validError = "Valid Error: " + bindingResult.getAllErrors();
            Util.logger(validError,Treatment.class);
            System.out.println(validError);
        }
        return treatment;
    }

    @GetMapping("/list")
    @ResponseBody
    public List<Treatment> list() {
        return treRepo.findAll();
    }

    @GetMapping("/delete/{index}")
    @ResponseBody
    public Treatment delete(@PathVariable String index) {
        try {
            int tid = Integer.parseInt(index);
            treRepo.deleteById(tid);
        }catch (Exception ex) {
            String error = "Delete Error : " + ex;
            Util.logger(error,Treatment.class);
            System.out.println(error);
        }
        return null;
    }
}

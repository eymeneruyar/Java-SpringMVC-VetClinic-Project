/*
        Author: Süleyman KARACA
        Project Name: Vet Klinik
        Page: VaccineDefinitionController Page
        Version: v1.0
        GitHub: https://github.com/slymnkrc
        Date: 17.09.2021
*/
package vetcilinic.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import vetcilinic.Entities.Vaccine;
import vetcilinic.Repositories.VaccineRepository;
import vetcilinic.Utils.Util;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/vaccineDefinition")
public class VaccineDefinitionController {

    final VaccineRepository vRepo;
    public VaccineDefinitionController(VaccineRepository vRepo) {
        this.vRepo = vRepo;
    }

    @GetMapping("")
    public String vaccineDefinition() {
        return "vaccineDefinition";
    }

    // VACCINE ADD - Ajax
    @PostMapping("/add")
    @ResponseBody
    public Vaccine add(@RequestBody @Valid Vaccine vaccine, BindingResult bindingResult) {
        if (!bindingResult.hasErrors()) {
            Vaccine v = vRepo.save(vaccine);
            return v;
        } else {
            String validError = "Validation Error: " + bindingResult.getAllErrors();
            Util.logger(validError,Vaccine.class);
            System.out.println(validError);
        }
        return vaccine;
    }

    // VACCINE LIST - Ajax
    @GetMapping("/list")
    @ResponseBody
    public List<Vaccine> list() {
        return vRepo.findAll();
    }

    // VACCINE DELETE - Ajax
    @ResponseBody
    @GetMapping("/delete/{index}")
    public Vaccine delete(@PathVariable String index) {
        try {
            int vid = Integer.parseInt(index);
            vRepo.deleteById(vid);
        } catch (Exception ex) {
            String error = "Delete Error : " + ex;
            Util.logger(error,Vaccine.class);
            System.out.println(error);
        }
        return null;
    }
}

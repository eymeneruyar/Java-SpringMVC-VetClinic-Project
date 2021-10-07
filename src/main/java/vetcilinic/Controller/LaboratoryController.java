//--------------------------------------- Project Information - Start ---------------------------------------//
/*
    Name: Eymen ERUYAR
    Project Name: Vet Klinik
    Page: Laboratory Controller
    Version: v1.3
    GitHub: https://github.com/eymeneruyar
    Date: 22.09.2021
*/
//--------------------------------------- Project Information - End -----------------------------------------//
package vetcilinic.Controller;

import org.jcp.xml.dsig.internal.dom.Utils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import vetcilinic.Entities.*;
import vetcilinic.Projection.LaboratoryInfo;
import vetcilinic.Repositories.CustomerRepository;
import vetcilinic.Repositories.LaboratoryRepository;
import vetcilinic.Repositories.PatientRepository;
import vetcilinic.Utils.Util;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping("/laboratory")
public class LaboratoryController {

    final LaboratoryRepository labRepo;
    final PatientRepository paRepo;
    final CustomerRepository cuRepo;
    //Laboratory labInfo = new Laboratory();
    public LaboratoryController(LaboratoryRepository labRepo, PatientRepository paRepo, CustomerRepository cuRepo) {
        this.labRepo = labRepo;
        this.paRepo = paRepo;
        this.cuRepo = cuRepo;
    }

    @GetMapping("")
    public String laboratory(Model model){
        model.addAttribute("customerList",cuRepo.findAll());
        model.addAttribute("patientList",paRepo.findAll());
        model.addAttribute("lab",new Laboratory());
        return "laboratory";
    }

    @PostMapping("/add")
    public String add(Laboratory lab,@RequestParam("fileName")MultipartFile file, BindingResult result){

        //System.out.println("İlk hali: " + lab);

        if(!result.hasErrors()){

            Patient patient = paRepo.findById(lab.getLabPaId()).get();
            Customer customer = cuRepo.findById(lab.getLabCuId()).get();
            lab.setPatient(patient);
            lab.setCustomer(customer);
            //Date Format
            Date date = new Date();
            lab.setLabDate(new SimpleDateFormat("dd-MM-yyyy").format(date));

            //File Upload
            String fileName = StringUtils.cleanPath(file.getOriginalFilename());
            System.out.println("FileName: " + fileName);
            if((!fileName.equals(" ")) && (fileName != null) && (fileName.length() > 0)){
                String ext = fileName.substring(fileName.length()-5, fileName.length());
                String uui = UUID.randomUUID().toString();
                fileName = uui + ext;
                try {
                    Path path = Paths.get(Util.UPLOAD_DIR + fileName);
                    Files.copy(file.getInputStream(), path, StandardCopyOption.REPLACE_EXISTING);
                } catch (IOException e) {
                    String labFileError = "Laboratuvar sonucuna dosya eklerken hata oluştu!" + e;
                    Util.logger(labFileError,Laboratory.class);
                    System.err.println(labFileError);
                }
                lab.setLabFileName(fileName);
            }else {
                System.out.println("Dosya seçilmedi!");
            }
            //File Upload

            lab = labRepo.saveAndFlush(lab);
            System.out.println("Son hali: " + lab);

            return "redirect:/laboratory";

        }else {
            String labValidationError = "Hata: " + result.getAllErrors();
            Util.logger(labValidationError,Laboratory.class);
            System.out.println(labValidationError);
        }

        return "laboratory";

    }

    @ResponseBody
    @GetMapping("/list")
    public List<LaboratoryInfo> list(){
        return labRepo.labInfo();
    }

    @ResponseBody
    @DeleteMapping("/delete/{stLid}")
    public String delete(@PathVariable String stLid){

        String status = "0";

        try {
            int labId = Integer.parseInt(stLid);
            Optional<Laboratory> labOpt = labRepo.findById(labId);
            if (labOpt.isPresent()){
                labRepo.deleteById(labId);
                //File Delete
                String deleteFilePath = labOpt.get().getLabFileName();
                File file = new File(Util.UPLOAD_DIR + deleteFilePath);
                file.delete();
                //File Delete
                status = "1";
            }
        } catch (Exception e) {
            String labDeleteError = "Laboratory Delete Error: " + e;
            Util.logger(labDeleteError,Laboratory.class);
            System.out.println(labDeleteError);
        }
        return status;

    }

    @ResponseBody
    @GetMapping("/info/{stLid}")
    public Laboratory info(@PathVariable String stLid,Model model){

        Laboratory labInfo = new Laboratory();

        try {
            int labId = Integer.parseInt(stLid);
            if(labId > 0){
                Optional<Laboratory> labOpt = labRepo.findById(labId);
                if (labOpt.isPresent()){
                    labInfo = labOpt.get();
                    System.out.println("LabInfo: " + labInfo);
                }
            }
        } catch (Exception e) {
            String labInfoError = "Bilgilendirme ekranında bir hata oluştu!" + e;
            Util.logger(labInfoError,Laboratory.class);
            System.out.println(labInfoError);
            System.err.println(labInfoError);
        }

        return labInfo;

    }

}

//--------------------------------------- Project Information - Start ---------------------------------------//
/*
    Name: Eymen ERUYAR
    Project Name: Vet Klinik
    Page: Agenda Controller
    Version: v1.1
    GitHub: https://github.com/eymeneruyar
    Date: 21.09.2021
*/
//--------------------------------------- Project Information - End -----------------------------------------//
package vetcilinic.Controller;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import vetcilinic.Entities.Agenda;
import vetcilinic.Entities.User;
import vetcilinic.Repositories.AgendaRepository;
import vetcilinic.Repositories.UserRepository;
import vetcilinic.Utils.Util;

import javax.validation.Valid;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/agenda")
public class AgendaController {

    final AgendaRepository agendaRepo;
    final UserRepository uRepo;
    public AgendaController(AgendaRepository agendaRepo, UserRepository uRepo) {
        this.agendaRepo = agendaRepo;
        this.uRepo = uRepo;
    }

    @GetMapping("")
    public String agenda(Model model){
        model.addAttribute("noteList",agendaRepo.findAll());
        return "agenda";
    }

    @ResponseBody
    @PostMapping("add")
    public Agenda agendaAdd(@RequestBody @Valid Agenda a, BindingResult result, Date date){

        Agenda agenda = new Agenda();
        System.out.println("Gelen Nesne: " + a);
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String email = auth.getName();
        User user = new User();

        Optional<User> userOptional = uRepo.findByuEmailEqualsIgnoreCase(email);
        if (userOptional.isPresent()){
            user = userOptional.get();
        }

        try {
            if (!result.hasErrors()){
                date = new Date();
                a.setSaveDate(new SimpleDateFormat("dd-MM-yyyy").format(date));
                a.setUid(user.getUId());
                String[] convertDate = a.getAgendaDate().split("-");
                String formatDate = convertDate[2] + "-" + convertDate[1] + "-" + convertDate[0];
                a.setAgendaDate(formatDate);
                agenda = agendaRepo.saveAndFlush(a);
            } else {
                String validationError = "Hata: " + result.getAllErrors();
                Util.logger(validationError,Agenda.class);
                System.out.println(validationError);
            }
        } catch (Exception e) {
            String addUpdateError = "Ekleme veya Güncelleme sırasında bir hata oluştu!" + e;
            Util.logger(addUpdateError,Agenda.class);
            System.err.println(addUpdateError);
        }
        return agenda;
    }

    @ResponseBody
    @GetMapping("/list")
    public List<Agenda> list(){
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String email = auth.getName();
        User user = new User();
        Optional<User> userOptional = uRepo.findByuEmailEqualsIgnoreCase(email);
        if (userOptional.isPresent()){
            user = userOptional.get();
        }

        return agendaRepo.findByUidEquals(user.getUId());
    }

    @ResponseBody
    @DeleteMapping("/delete/{stNid}")
    public String delete(@PathVariable String stNid){
        String status = "0";
        try {
            int agendaId = Integer.parseInt(stNid);
            agendaRepo.deleteById(agendaId);
            status = "1";
        } catch (Exception e) {
            String deleteError = "Silme işlemi sırasında bir hata oluştu!" + e;
            Util.logger(deleteError,Agenda.class);
            System.err.println(deleteError);
        }
        return status;
    }

}

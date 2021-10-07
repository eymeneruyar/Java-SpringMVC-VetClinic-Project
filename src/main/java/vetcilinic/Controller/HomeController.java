//--------------------------------------- Project Information - Start ---------------------------------------//
/*
    Name: Eymen ERUYAR
    Project Name: Vet Klinik
    Page: Home Controller
    Version: v1.4
    GitHub: https://github.com/eymeneruyar
    Date: 23.09.2021
*/
//--------------------------------------- Project Information - End -----------------------------------------//
package vetcilinic.Controller;

import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import vetcilinic.Entities.*;
import vetcilinic.Repositories.*;
import vetcilinic.Services.UserService;

import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping("/home")
public class HomeController {

    final UserService uService;
    final ScheduleCalendarRepository scRepo;
    final PayinRepository payInRepo;
    final PayoutRepository payOutRepo;
    final SalesRepository salesRepository;
    final CustomerRepository cuRepo;
    final ProductRepository pRepo;
    final PatientRepository patientRepository;
    public HomeController(UserService uService, ScheduleCalendarRepository scRepo, PayinRepository payInRepo, PayoutRepository payOutRepo, SalesRepository salesRepository, CustomerRepository cuRepo, ProductRepository pRepo, PatientRepository patientRepository) {
        this.uService = uService;
        this.scRepo = scRepo;
        this.payInRepo = payInRepo;
        this.payOutRepo = payOutRepo;
        this.salesRepository = salesRepository;
        this.cuRepo = cuRepo;
        this.pRepo = pRepo;
        this.patientRepository = patientRepository;
    }

    @GetMapping("")
    public String home(Model model){

        /*AccountActivities activeUser = uService.info();
        model.addAttribute("activeUser",activeUser);
        System.out.println(activeUser.toString());*/
        return "home";
    }

    @ResponseBody
    @GetMapping("/pageCalendar/{stPageNo}")
    public List<ScheduleCalendar> pagination(@PathVariable String stPageNo){

        int pageNo = Integer.parseInt(stPageNo);
        Pageable pageable = PageRequest.of(pageNo,1);

        //Date Format
        Date date = new Date();
        //SimpleDateFormat formatter = new SimpleDateFormat("E, MMM dd yyyy HH:mm:ss ", Locale.ENGLISH);
        SimpleDateFormat formatter = new SimpleDateFormat("MMM dd yyyy ", Locale.ENGLISH);
        String strDate = formatter.format(date);
        //System.out.println("StrDate:" + strDate);

        List<ScheduleCalendar> lsCalendar = scRepo.findByStartContainingAllIgnoreCase(strDate,pageable);
        int totalPage = scRepo.countByStartContainingAllIgnoreCase(strDate);
        //System.out.println("Total page: " + totalPage);
        //System.out.println(lsCalendar);

        return lsCalendar;

    }

    @ResponseBody
    @GetMapping("/totalPage")
    public int totalPage(){

        Date date = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("MMM dd yyyy ", Locale.ENGLISH);
        String strDate = formatter.format(date);

        return scRepo.countByStartContainingAllIgnoreCase(strDate);
    }

    //--------------------------- Charts - Table - Statistics - Start ---------------------------//
    @ResponseBody
    @GetMapping("/priceChart")
    public Map<String,Object> priceChart(Model model){

        Map<String,Object> hm = new LinkedHashMap<>();

        List<PayIn> payInList = payInRepo.findAll();
        List<PayOut> payOutList = payOutRepo.findAll();

        Integer payInTotal = payInList.stream().mapToInt(PayIn::getPinAmount).sum(); //Kasa giriş toplam
        Integer payOutTotal = payOutList.stream().mapToInt(PayOut::getPoutAmount).sum(); //Kasa çıkış toplam
        Integer netEarning = payInTotal - payOutTotal; //Net kar
        hm.put("payInTotal",payInTotal);
        hm.put("payOutTotal",payOutTotal);
        hm.put("netEarning",netEarning);

        return hm;
    }

    @ResponseBody
    @GetMapping("/generalStatics")
    public Map<String,Object> generalStatics(){

        Map<String,Object> hm = new LinkedHashMap<>();

        List<Sales> salesList = salesRepository.findAll();
        List<Customer> cuList = cuRepo.findAll();
        List<Product> productList = pRepo.findAll();

        hm.put("saleCount",salesList.size());
        hm.put("customerCount",cuList.size());
        hm.put("productCount",productList.size());

        return hm;

    }

    @ResponseBody
    @GetMapping("/patientTable")
    public List<Patient> patientList(){

        Date date = new Date();
        String dateFormat = new SimpleDateFormat("dd-MM-yyyy").format(date);

        List<Patient> patientList = patientRepository.findBySaveDateEqualsIgnoreCase(dateFormat);

        return patientList;

    }
    //--------------------------- Charts - Table - Statistics - End ---------------------------//

}

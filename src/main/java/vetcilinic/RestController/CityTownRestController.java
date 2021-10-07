//--------------------------------------- Project Information - Start ---------------------------------------//
/*
    Name: Eymen ERUYAR
    Project Name: Vet Klinik
    Page: City and Town Rest Controller
    Version: v1.0
    GitHub: https://github.com/eymeneruyar
    Date: 25.09.2021
*/
//--------------------------------------- Project Information - End -----------------------------------------//
package vetcilinic.RestController;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import vetcilinic.Entities.Towns;
import vetcilinic.Repositories.CitiesRepository;
import vetcilinic.Repositories.TownsRepository;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/address")
public class CityTownRestController {

    final CitiesRepository cityRepo;
    final TownsRepository townRepo;

    public CityTownRestController(CitiesRepository cityRepo, TownsRepository townRepo) {
        this.cityRepo = cityRepo;
        this.townRepo = townRepo;
    }

    @GetMapping("/cityList")
    public Map<String,Object> city(){
        Map<String,Object> hm = new LinkedHashMap<>();
        hm.put("status",true);
        hm.put("result",cityRepo.findAll());
        return hm;
    }

    @GetMapping("/townList/{stId}")
    public Map<String,Object> town(@PathVariable String stId){
        Map<String,Object> hm = new LinkedHashMap<>();
        int id = Integer.parseInt(stId);
        List<Towns> ls = townRepo.findByTownCityKeyEquals(id);
        hm.put("status",true);
        hm.put("result",ls);
        return hm;
    }

}

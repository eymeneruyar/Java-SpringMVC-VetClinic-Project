//--------------------------------------- Project Information - Start ---------------------------------------//
/*
    Name: Süleyman KARACA
    Project Name: Vet Klinik
    Page: Suppliesr Controller
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
import vetcilinic.Entities.Supplier;
import vetcilinic.Entities.SupplierProduct;
import vetcilinic.Repositories.SupplierProductRepository;
import vetcilinic.Repositories.SupplierRepository;
import vetcilinic.Utils.Util;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/suppliers")
public class SupplierController {

    final SupplierRepository sRepo;
    final SupplierProductRepository spRepo;
    public SupplierController(SupplierRepository sRepo, SupplierProductRepository spRepo) {
        this.sRepo = sRepo;
        this.spRepo = spRepo;
    }

    @GetMapping("")
    public String SupplierController(){
        return "suppliers";
    }

    // Supplier ADD - Ajax
    @PostMapping("/add")
    @ResponseBody
    public Supplier add(@RequestBody @Valid Supplier supplier, BindingResult bindingResult) {
        if ( !bindingResult.hasErrors()) {
            //System.out.println(bindingResult.hasErrors());
            Supplier s = sRepo.save(supplier);
            return s;
        }else{
            String error = "SupplierController PostMapping Error!";
            Util.logger(error, Supplier.class);
            System.err.println(error);
        }
        return supplier;
    }

    // Supplier LIST - Ajax
    @GetMapping("/list")
    @ResponseBody
    public List<Supplier> list() {
        System.out.println("GetMapping List - burada");
        return sRepo.findAll();
    }

    // Supplier DELETE - Ajax
    @GetMapping("/delete/{index}")
    @ResponseBody
    public Supplier delete(@PathVariable String index) {
        try{
            int sid = Integer.parseInt(index);
            sRepo.deleteById(sid);
        }catch (Exception ex) {
            String error = "Delete Error: " + ex;
            Util.logger(error, Supplier.class);
            System.err.println(error);
        }
        return null;
    }

    // Tedarikçiye Ait Ürünler
    @GetMapping("/products")
    @ResponseBody
    public List<SupplierProduct> supplierProductList() {
        return spRepo.findAll();
    }


}

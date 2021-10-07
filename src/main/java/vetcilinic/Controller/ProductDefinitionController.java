/*
        Author: Süleyman KARACA
        Project Name: Vet Klinik
        Page: ProductDefinitionController Page
        Version: v1.0
        GitHub: https://github.com/slymnkrc
        Date: 17.09.2021
*/
package vetcilinic.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import vetcilinic.Entities.Product;
import vetcilinic.Entities.Supplier;
import vetcilinic.Repositories.ProductRepository;
import vetcilinic.Repositories.SupplierRepository;
import vetcilinic.Utils.Util;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/productDefinition")
public class ProductDefinitionController {

    final ProductRepository pRepo;
    final SupplierRepository sRepo;
    public ProductDefinitionController(ProductRepository pRepo, SupplierRepository sRepo) {
        this.pRepo = pRepo;
        this.sRepo = sRepo;
    }

    @GetMapping("")
    public String productDefinition() {
        return "productDefinition";
    }

    // PRODUCT ADD -Ajax
    @PostMapping("/add")
    @ResponseBody
    public Product add(@RequestBody @Valid Product product, BindingResult bindingResult) {
        if (!bindingResult.hasErrors()) {
            // jpa.......
            Product p = pRepo.save(product);
            return p;
        } else {
            String proDefValiError = "Hata: " + bindingResult.getAllErrors();
            Util.logger(proDefValiError,Product.class);
            System.out.println(proDefValiError);
        }
        return product;
    }

    // PRODUCT LIST - Ajax
    @GetMapping("/list")
    @ResponseBody
    public List<Product> list() {
        return pRepo.findAll();
    }

    // PRODUCT DELETE - Ajax
    @ResponseBody
    @GetMapping("/delete/{index}")
    public Product delete(@PathVariable String index) {
        try {
            int pid = Integer.parseInt(index);
            pRepo.deleteById(pid);
        } catch (Exception ex) {
            String proDeleteError = "Delete Error : " + ex;
            Util.logger(proDeleteError,Product.class);
            System.out.println(proDeleteError);
        }
        return null;
    }

    // Supplier List
    @GetMapping("/supplier")
    @ResponseBody
    public List<Supplier> supplierList() {
        return sRepo.findAll();
    }
}

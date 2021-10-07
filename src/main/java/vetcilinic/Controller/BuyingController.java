//--------------------------------------- Project Information - Start ---------------------------------------//
/*
    Name: Süleyman KARACA
    Project Name: Vet Klinik
    Page: BuyingController
    Version: v1.1
    GitHub: https://github.com/slymnkrc
    Date: 13.09.2021
*/
//--------------------------------------- Project Information - End -----------------------------------------//


package vetcilinic.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import vetcilinic.Entities.*;
import vetcilinic.Repositories.BuyingPaymentRepository;
import vetcilinic.Repositories.BuyingRepository;
import vetcilinic.Repositories.SupplierProductRepository;
import vetcilinic.Repositories.SupplierRepository;
import vetcilinic.Utils.Util;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/buying")
public class BuyingController {

    final SupplierRepository supRepo;
    final SupplierProductRepository supProRepo;
    final BuyingRepository buyRepo;
    final BuyingPaymentRepository buyingPaymentRepository;

    public BuyingController(SupplierRepository supRepo, SupplierProductRepository supProRepo, BuyingRepository buyRepo, BuyingPaymentRepository buyingPaymentRepository) {
        this.supRepo = supRepo;
        this.supProRepo = supProRepo;
        this.buyRepo = buyRepo;
        this.buyingPaymentRepository = buyingPaymentRepository;
    }

    @GetMapping("")
    public String BuyingController() {
        return "buying";
    }

    @GetMapping("/suppliers")
    @ResponseBody
    public List<Supplier> supplierList() {
        return supRepo.findAll();
    }

    @GetMapping("/products/{sid}")
    @ResponseBody
    public List<SupplierProduct> proListBySupplierId(@PathVariable Integer sid) {
        return supProRepo.findBySupplier_SupIdEquals(sid);
    }

    // Supplier ADD - Ajax
    @PostMapping("/suppliers/add")
    @ResponseBody
    public Supplier add(@RequestBody @Valid Supplier supplier, BindingResult bindingResult) {
        if (!bindingResult.hasErrors()) {
            Supplier s = supRepo.save(supplier);
            return s;
        } else {
            String supplierAddError = " SupplierController PostMapping bölümünde hata var!";
            Util.logger(supplierAddError,Supplier.class);
            System.out.println(supplierAddError);

        }
        return supplier;
    }

    @PostMapping("/add")
    @ResponseBody
    public Buying addSupplier(@RequestBody @Valid Buying buying, BindingResult bindingResult) {

        Supplier supplier = supRepo.findById(buying.getSupplier().getSupId()).get();
        System.out.println("Supplier : " + supplier);
        buying.setSupplier(supplier);


        SupplierProduct supplierProduct = supProRepo.findById(buying.getSupplierProduct().getSupProId()).get();
        System.out.println("SupplierProduct : " + supplierProduct);
        buying.setSupplierProduct(supplierProduct);

        if (!bindingResult.hasErrors()) {
            Buying b = buyRepo.save(buying);
            buyRepo.flush();

            BuyingPayment buyingPayment = new BuyingPayment();
            buyingPayment.setBuying(b);

            buyingPayment.setTotalDebt(Integer.parseInt(buying.getBuyAmount()) * supplierProduct.getSupProPrice());
            buyingPayment.setRemainDebt(Integer.parseInt(buying.getBuyAmount()) * supplierProduct.getSupProPrice());

            buyingPaymentRepository.save(buyingPayment);

            return b;
        } else {
            String buyingAddError = "Buying Controller add Post Mapping hata var!";
            Util.logger(buyingAddError,Buying.class);
            System.out.println(buyingAddError);
        }
        return buying;
    }

    // Buy LIST - Ajax
    @GetMapping("/list")
    @ResponseBody
    public List<Buying> list() {
        return buyRepo.findAll();
    }


    // Buy DELETE - Ajax
    @ResponseBody
    @GetMapping("/delete/{index}")
    public Product delete(@PathVariable String index) {
        try {
            int pid = Integer.parseInt(index);
            buyRepo.deleteById(pid);
        } catch (Exception ex) {
            String buyingDeleteError = "Delete Error : " + ex;
            Util.logger(buyingDeleteError,Buying.class);
            System.err.println(buyingDeleteError);
        }
        return null;
    }

}

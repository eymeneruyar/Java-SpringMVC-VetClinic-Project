package vetcilinic.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import vetcilinic.Entities.*;
import vetcilinic.Repositories.*;
import vetcilinic.Utils.Util;

import java.util.List;

@Controller
@RequestMapping("/sales")
public class SalesController {

    final CustomerRepository cuRepo;
    final PatientRepository paRepo;
    final SalesRepository salRepo;
    final VaccineRepository vacRepo;
    final ProductRepository proRepo;
    final SalesPaymentRepository salesPaymentRepository;

    public SalesController(CustomerRepository cuRepo, PatientRepository paRepo, SalesRepository salRepo, VaccineRepository vacRepo, ProductRepository proRepo, SalesPaymentRepository salesPaymentRepository) {
        this.cuRepo = cuRepo;
        this.paRepo = paRepo;
        this.salRepo = salRepo;
        this.vacRepo = vacRepo;
        this.proRepo = proRepo;
        this.salesPaymentRepository = salesPaymentRepository;
    }

    @GetMapping("")
    public String SalesController() {
        return "sales";
    }

    @GetMapping("/patients")
    @ResponseBody
    public List<Patient> patientsList() {
        return paRepo.findAll();
    }

    @GetMapping("/patients/{cuId}")
    @ResponseBody
    public List<Patient> patientsByCustomerId(@PathVariable Integer cuId) {
        return paRepo.findByCustomer_CuIdEquals(cuId);
    }

    @GetMapping("/customers")
    @ResponseBody
    public List<Customer> customerList() {
        return cuRepo.findAll();
    }

    @PostMapping("/add")
    @ResponseBody
    public Sales add(@RequestBody Sales sales) {
        Sales sales_ = new Sales();

        Customer customer = cuRepo.findById(sales.getCustomer().getCuId()).get();
        System.out.println("customer : " + customer);
        sales.setCustomer(customer);

        Vaccine vaccine = vacRepo.findById(sales.getVaccine().getVacid()).get();
        sales.setVaccine(vaccine);

        Product product = proRepo.findById(sales.getProduct().getProId()).get();
        sales.setProduct(product);

        Patient patient = paRepo.findById(sales.getPatient().getPaId()).get();
        sales.setPatient(patient);

//        sales.setSaTotalPrice( Integer.parseInt(sales.getSaPrAmount()) * product.getProSalesPrice());



        System.out.println(sales.getProduct().getProId());
        System.out.println(Integer.parseInt(sales.getSaPrAmount()));
        salRepo.procProductUpdateStock(sales.getProduct().getProId(), Integer.parseInt(sales.getSaPrAmount()));
        sales_ = salRepo.save(sales);
        salRepo.flush();

        System.out.println("idd : " + sales_.getSaId());
        //Sales Payment - sales id, total debt, payed debt

        SalesPayment salesPayment = new SalesPayment();
        salesPayment.setSales(sales_);

        //salesPayment.setTotalDebt(Integer.parseInt(sales.getSaPrAmount()) * product.getProSalesPrice());
        //salesPayment.setRemainDebt(Integer.parseInt(sales.getSaPrAmount()) * product.getProSalesPrice());

        salesPayment.setTotalDebt(Integer.parseInt(sales.getSaPrAmount()) * product.getProSalesPrice() + Integer.parseInt(sales.getSaVacAmount())*vaccine.getVacSalesPrice());
        salesPayment.setRemainDebt(Integer.parseInt(sales.getSaPrAmount()) * product.getProSalesPrice() + Integer.parseInt(sales.getSaVacAmount())*vaccine.getVacSalesPrice());

        salesPaymentRepository.save(salesPayment);

        return sales_;
    }

    @GetMapping("/list")
    @ResponseBody
    public List<Sales> list() {
        return salRepo.findAll();
    }

    @ResponseBody
    @GetMapping("/delete/{index}")
    public Sales delete(@PathVariable String index) {
        try {
            int sid = Integer.parseInt(index);
            salRepo.deleteById(sid);
        } catch (Exception ex) {
            String salesDeleteError = "Delete Error : " + ex;
            Util.logger(salesDeleteError,Sales.class);
            System.err.println(salesDeleteError);
        }
        return null;
    }

}

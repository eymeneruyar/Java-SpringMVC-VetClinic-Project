package vetcilinic.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import vetcilinic.Entities.*;

import vetcilinic.Repositories.*;
import vetcilinic.Utils.Util;

import java.util.List;

@Controller
@RequestMapping("/payActions")
public class PayActionsController {


    //final PayinRepository pinRepo;
//    final PayoutRepository pouRepo;
    final PayoutRepository payoutRepository;
    final SupplierRepository supRepo;
    final BuyingRepository buyRepo;
    final CustomerRepository cuRepo;
    final SalesRepository saRepo;
    final SalesPaymentRepository sapaRepo;
    final PayinRepository payinRepository;
    final BuyingPaymentRepository buyingPaymentRepository;

    public PayActionsController(PayoutRepository payoutRepository, SupplierRepository supRepo, BuyingRepository buyRepo, CustomerRepository cuRepo, SalesRepository saRepo, SalesPaymentRepository sapaRepo, PayinRepository payinRepository, BuyingRepository buyingRepository, BuyingPaymentRepository buyingPaymentRepository) {
        this.payoutRepository = payoutRepository;
        this.supRepo = supRepo;
        this.buyRepo = buyRepo;
        this.cuRepo = cuRepo;
        this.saRepo = saRepo;
        this.sapaRepo = sapaRepo;
        this.payinRepository = payinRepository;
        this.buyingPaymentRepository = buyingPaymentRepository;
    }

    @GetMapping("")
    public String payActions() {

        return "payActions";
    }

    @GetMapping("/suppliers")
    @ResponseBody
    public List<Supplier> supplierList() {
        return supRepo.findAll();
    }

    @GetMapping("/receipts/{supId}")
    @ResponseBody
    public List<Buying> findBySupplierSupId(@PathVariable Integer supId) {
        return buyRepo.findBySupplier_SupIdEquals(supId);
    }

    @GetMapping("/customers")
    @ResponseBody
    public List<Customer> customerList() {
        return cuRepo.findAll();
    }

    @GetMapping("/receiptsCustomer/{cuId}")
    @ResponseBody
    public List<Sales> findByCustomerCuId(@PathVariable Integer cuId) {
        return saRepo.findByCustomer_CuIdEquals(cuId);
    }

    @PostMapping("/payIn/add")
    @ResponseBody
    public PayIn AddPayIn(@RequestBody PayIn payIn) {
        SalesPayment salesPayment = sapaRepo.findBySales_SaIdEquals(payIn.getSales().getSaId());

        if (salesPayment.getRemainDebt() == 0) {
            System.err.println("Borç Kalmamıştır");
            return null;
        }

        //update
        if (payIn.getPinId() != null) {
            PayIn payInEntity = payinRepository.getById(payIn.getPinId());

            if (salesPayment.getRemainDebt() + payInEntity.getPinAmount() >= payIn.getPinAmount()) {
                salesPayment.setRemainDebt(salesPayment.getRemainDebt() + payInEntity.getPinAmount() - payIn.getPinAmount());
            }
            payInEntity.setPinAmount(payIn.getPinAmount());
            return payinRepository.save(payInEntity);
        }
        //add
        else {

            //kalan borç ödenen borçtan düşük veya eşitse:
            if (salesPayment.getRemainDebt() >= payIn.getPinAmount()) {
                salesPayment.setRemainDebt(salesPayment.getRemainDebt() - payIn.getPinAmount());

                PayIn p = payinRepository.save(payIn);
                return p;
            } else {
                String payInAddError = "Ödenen toplam miktar borçtan daha fazla!";
                Util.logger(payInAddError,PayIn.class);
                System.err.println(payInAddError);
                return null;
            }
        }
    }

    @GetMapping("/payIn/delete/{piId}")
    @ResponseBody
    public PayIn deletePayIn(@PathVariable Integer piId) {
        try {
            PayIn payIn = payinRepository.getById(piId);
            SalesPayment salesPayment = sapaRepo.findBySales_SaIdEquals(payIn.getSales().getSaId());
            salesPayment.setRemainDebt(salesPayment.getRemainDebt() + payIn.getPinAmount());
            sapaRepo.save(salesPayment);
            payinRepository.deleteById(piId);
        } catch (Exception ex) {
            String payInDeleteError = "Delete Error : " + ex;
            Util.logger(payInDeleteError,PayIn.class);
            System.err.println(payInDeleteError);
        }
        return null;
    }

    @GetMapping("/payOut/delete/{poutId}")
    @ResponseBody
    public PayOut deletePayOut(@PathVariable Integer poutId) {
        try {
            PayOut payOut = payoutRepository.getById(poutId);
            BuyingPayment buyingPayment = buyingPaymentRepository.findByBuying_BuyIdEquals(payOut.getBuying().getBuyId());
            buyingPayment.setRemainDebt(buyingPayment.getRemainDebt() + payOut.getPoutAmount());
            payoutRepository.deleteById(poutId);
        } catch (Exception ex) {
            String payOutDeleteError = "Delete Error : " + ex;
            Util.logger(payOutDeleteError,PayOut.class);
            System.err.println(payOutDeleteError);
        }
        return null;
    }


    @PostMapping("/payOut/add")
    @ResponseBody
    public PayOut AddPayOut(@RequestBody PayOut payOut) {
        BuyingPayment buyingPayment = buyingPaymentRepository.findByBuying_BuyIdEquals(payOut.getBuying().getBuyId());

        if (buyingPayment.getRemainDebt() == 0) {
            String error = "Borç Kalmamıştır";
            Util.logger(error,PayOut.class);
            System.err.println(error);
            System.err.println(error);
            return null;
        }

        //update
        if (payOut.getPoId() != null) {
            PayOut payOutEntity = payoutRepository.getById(payOut.getPoId());

            if (buyingPayment.getRemainDebt() + payOutEntity.getPoutAmount() >= payOut.getPoutAmount()) {
                buyingPayment.setRemainDebt(buyingPayment.getRemainDebt() + payOutEntity.getPoutAmount() - payOut.getPoutAmount());
            }

            payOutEntity.setPoutAmount(payOut.getPoutAmount());
            return payoutRepository.save(payOutEntity);
        }
        //add
        else {
            //kalan borç ödenen borçtan düşük veya eşitse:

            if (buyingPayment.getRemainDebt() >= payOut.getPoutAmount()) {
                buyingPayment.setRemainDebt(buyingPayment.getRemainDebt() - payOut.getPoutAmount());

                PayOut p = payoutRepository.save(payOut);
                return p;
            }
            else {
                String error = "Ödenen toplam miktar borçtan daha fazla.";
                Util.logger(error,PayOut.class);
                System.err.println(error);
                return null;
            }
        }
    }

    @GetMapping("/salesPayment/{saId}")
    @ResponseBody
    public SalesPayment findSalesPaymentBySalesId(@PathVariable Integer saId) {
        return sapaRepo.findBySales_SaIdEquals(saId);
    }

    @GetMapping("/buyingPayment/{buId}")
    @ResponseBody
    public BuyingPayment findBuyingPaymentBySalesId(@PathVariable Integer buId) {
        return buyingPaymentRepository.findByBuying_BuyIdEquals(buId);
    }

    @GetMapping("/getAllPayIn")
    @ResponseBody
    public List<PayIn> getAllPayInList() {
        return payinRepository.findAll();
    }

    @GetMapping("/getAllPayOut")
    @ResponseBody
    public List<PayOut> getAllPayOutList() {
        return payoutRepository.findAll();
    }

}

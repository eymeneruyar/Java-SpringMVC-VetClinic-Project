package vetcilinic.Repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import vetcilinic.Entities.BuyingPayment;

import java.util.List;

public interface BuyingPaymentRepository extends JpaRepository<BuyingPayment,Integer> {
    BuyingPayment findByBuying_BuyIdEquals(Integer buyId);
}

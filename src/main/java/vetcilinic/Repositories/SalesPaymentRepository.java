//--------------------------------------- Project Information - Start ---------------------------------------//
/*
    Name: Süleyman KARACA
    Project Name: Vet Klinik
    Page: SalesPaymentRepository
    Version: v1.1
    GitHub: https://github.com/slymnkrc
    Date: 13.09.2021
*/
//--------------------------------------- Project Information - End -----------------------------------------//

package vetcilinic.Repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import vetcilinic.Entities.SalesPayment;

import java.util.List;
import java.util.Optional;

public interface SalesPaymentRepository extends JpaRepository<SalesPayment,Integer> {
    SalesPayment findBySales_SaIdEquals(Integer saId);

}

//--------------------------------------- Project Information - Start ---------------------------------------//
/*
    Name: Süleyman KARACA
    Project Name: Vet Klinik
    Page: BuyingRepository
    Version: v1.1
    GitHub: https://github.com/slymnkrc
    Date: 13.09.2021
*/
//--------------------------------------- Project Information - End -----------------------------------------//

package vetcilinic.Repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import vetcilinic.Entities.Buying;

import java.util.List;

public interface BuyingRepository extends JpaRepository<Buying,Integer> {
    List<Buying> findBySupplier_SupIdEquals(Integer supId);

}

//--------------------------------------- Project Information - Start ---------------------------------------//
/*
    Name: Süleyman KARACA
    Project Name: Vet Klinik
    Page: SalesRepository
    Version: v1.1
    GitHub: https://github.com/slymnkrc
    Date: 13.09.2021
*/
//--------------------------------------- Project Information - End -----------------------------------------//
package vetcilinic.Repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.query.Procedure;
import org.springframework.data.repository.query.Param;
import vetcilinic.Entities.Product;
import vetcilinic.Entities.Sales;

import java.util.List;
import java.util.Optional;

public interface SalesRepository extends JpaRepository<Sales,Integer> {

    @Procedure(name = "procProductUpdateStock")
    void procProductUpdateStock(@Param("id") Integer id, @Param("amount") Integer amount);

    List<Sales> findByCustomer_CuIdEquals(Integer cuId);

    List<Sales> findByProduct_ProIdEquals(Integer proId);

    List<Sales> findByProduct_ProSalesPriceEquals(Integer proSalesPrice);


}

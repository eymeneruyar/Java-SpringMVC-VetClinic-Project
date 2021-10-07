package vetcilinic.Repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import vetcilinic.Entities.SupplierProduct;

import java.util.List;

public interface SupplierProductRepository extends JpaRepository<SupplierProduct,Integer> {
    List<SupplierProduct> findBySupplier_SupIdEquals(Integer supId);


}

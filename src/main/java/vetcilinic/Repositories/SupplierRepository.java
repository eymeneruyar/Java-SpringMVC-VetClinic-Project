package vetcilinic.Repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import vetcilinic.Entities.Supplier;

public interface SupplierRepository extends JpaRepository<Supplier,Integer> {
}

package vetcilinic.Repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import vetcilinic.Entities.Customer;

public interface CustomerRepository extends JpaRepository<Customer,Integer> {
}

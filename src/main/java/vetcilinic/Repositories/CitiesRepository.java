package vetcilinic.Repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import vetcilinic.Entities.Cities;

public interface CitiesRepository extends JpaRepository<Cities,Integer> {
}

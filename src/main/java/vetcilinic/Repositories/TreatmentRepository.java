package vetcilinic.Repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import vetcilinic.Entities.Treatment;

public interface TreatmentRepository extends JpaRepository<Treatment,Integer> {
}

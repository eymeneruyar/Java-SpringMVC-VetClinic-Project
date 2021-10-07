package vetcilinic.Repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import vetcilinic.Entities.Patient;

import java.util.List;

public interface PatientRepository extends JpaRepository<Patient,Integer> {

    List<Patient> findByCustomer_CuIdEquals(Integer cuId);

    List<Patient> findBySaveDateEqualsIgnoreCase(String saveDate);



}

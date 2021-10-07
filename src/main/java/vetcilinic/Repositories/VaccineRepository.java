/*
        Author: Süleyman KARACA
        Project Name: Vet Klinik
        Page: VaccineRepository Page
        Version: v1.0
        GitHub: https://github.com/slymnkrc
        Date: 17.09.2021
*/
package vetcilinic.Repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import vetcilinic.Entities.Vaccine;

public interface VaccineRepository extends JpaRepository<Vaccine,Integer> {
}

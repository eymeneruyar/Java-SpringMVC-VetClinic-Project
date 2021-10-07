package vetcilinic.Repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import vetcilinic.Entities.Towns;

import java.util.List;

public interface TownsRepository extends JpaRepository<Towns,Integer> {

    List<Towns> findByTownCityKeyEquals(Integer townCityKey);

}

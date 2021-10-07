package vetcilinic.Repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import vetcilinic.Entities.Agenda;

import java.util.List;

public interface AgendaRepository extends JpaRepository<Agenda,Integer> {
    List<Agenda> findByUidEquals(Integer uid);
}

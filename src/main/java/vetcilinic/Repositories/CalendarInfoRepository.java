package vetcilinic.Repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import vetcilinic.Entities.CalendarInfo;

public interface CalendarInfoRepository extends JpaRepository<CalendarInfo, Integer> {
}

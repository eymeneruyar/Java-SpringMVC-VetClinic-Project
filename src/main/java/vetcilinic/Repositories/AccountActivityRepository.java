package vetcilinic.Repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import vetcilinic.Entities.AccountActivities;

public interface AccountActivityRepository extends JpaRepository<AccountActivities,Integer> {
}

package vetcilinic.Repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import vetcilinic.Entities.Role;

public interface RoleRepository extends JpaRepository<Role,Integer> {
}

package vetcilinic.Entities;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.Data;

import javax.persistence.*;
import java.util.List;

@Data
@Entity
public class Role {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "rid", nullable = false)
    private Integer rid;

    private String rName;

    @JsonBackReference
    @ManyToMany(mappedBy = "roles", cascade = CascadeType.DETACH)
    private List<User> users;

    @Override
    public String toString() {
        return String.format(" ");
    }

}

package vetcilinic.Entities;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.Data;
import org.hibernate.validator.constraints.Length;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.util.List;

@Data
@Entity
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "uId", nullable = false)
    private Integer uId;

    @NotNull(message = "Lütfen adınızı girin!")
    @NotEmpty(message = "Lütfen adınızı girin!")
    @Length(min = 2,max = 100,message = "Adınız min 2, max 100 karakter olmalıdır!")
    private String uName;

    @NotNull(message = "Lütfen soyadınızı girin!")
    @NotEmpty(message = "Lütfen soyadınızı girin!")
    @Length(min = 2,max = 100,message = "Adınız min 2, max 100 karakter olmalıdır!")
    private String uSurname;

    @Column(unique = true)
    @NotNull(message = "Lütfen email adresinizi girin!")
    @NotEmpty(message = "Lütfen email adresinizi girin!")
    @Length(min = 2,max = 100,message = "E-Mail adresiniz min 2, max 100 karakter olmalıdır!")
    private String uEmail;

    @Column(unique = true)
    @NotNull(message = "Lütfen telefonunuzu girin!")
    @NotEmpty(message = "Lütfen telefonunuzu girin!")
    @Length(min = 2,max = 13,message = "Telefon numaranız min 2, max 13 karakter olmalıdır!")
    private String uPhone;

    //@Column(unique = true)
    private String uFirmName;

    @NotNull(message = "Lütfen şifrenizi girin!")
    @NotEmpty(message = "Lütfen şifrenizi girin!")
    private String uPassword;

    private String uProfileImage;

    private Integer uRoleStatus;

    private boolean enabled;
    private boolean tokenExpired;


    @JsonManagedReference
    @ManyToMany(cascade = CascadeType.DETACH)
    @JoinTable(name = "user_roles",joinColumns = @JoinColumn(name = "user_u_id"),inverseJoinColumns = @JoinColumn(name = "roles_rid"))
    private List<Role> roles;

    @Override
    public String toString() {
        return String.format(" ");
    }


}

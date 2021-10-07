package vetcilinic.Entities;

import lombok.Data;
import org.hibernate.validator.constraints.Length;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

@Entity
@Data
public class Supplier {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "sup_ıd", nullable = false)
    private Integer supId;

    @NotNull(message = "Name Parametresi Null Olamaz")
    @NotEmpty(message = "Bu Alan Boş Bırakılamaz")
    @Length(min = 2, max = 100,message = "Name Adı en az 2 Karakter, en çok 100 Karakter Olmalıdır")
    @Column(unique = true)
    private String supName;

    @NotNull(message = "Email Parametresi Null Olamaz")
    @NotEmpty(message = "Bu Alan Boş Bırakılamaz")
    @Length(max = 100,message = "Email Adı en az 2 Karakter, en çok 100 Karakter Olmalıdır")
    @Column(unique = true)
    private String supEmail;

    @NotNull(message = "Telefon Parametresi Null Olamaz")
    @NotEmpty(message = "Bu Alan Boş Bırakılamaz")
    @Length(max = 20,message = "Telefon Adı en az 2 Karakter, en çok 100 Karakter Olmalıdır")
    @Column(unique = true)
    private String supPhone;

}

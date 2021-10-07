package vetcilinic.Entities;

import lombok.Data;
import org.hibernate.validator.constraints.Length;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

@Entity
@Data
public class Category {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "catid", nullable = false)
    private Integer catid;

    @NotNull(message = "Name Parametresi Null Olamaz")
    @NotEmpty(message = "Bu Alan Boş Bırakılamaz")
    @Length(min = 2, max = 100,message = "Ürün Adı en az 2 Karakter, en çok 100 Karakter Olmalıdır")
    private String catName;

}

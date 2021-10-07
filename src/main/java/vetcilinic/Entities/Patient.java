package vetcilinic.Entities;

import lombok.Data;
import org.hibernate.validator.constraints.Length;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.util.List;

@Data
@Entity
public class Patient {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "paId", nullable = false)
    private Integer paId;

    @NotNull(message = "Bu alan boş olamaz!")
    private Integer customerId;

    @NotNull(message = "Bu alan boş olamaz!")
    @NotEmpty(message = "Bu alan boş olamaz!")
    @Length(min = 3,max = 50,message = "İsim min 3, max 50 karakter olabilir!")
    private String paName;

    @Column(unique = true)
    @NotNull(message = "Bu alan boş olamaz!")
    @NotEmpty(message = "Bu alan boş olamaz!")
    @Length(min = 3,max = 20,message = "Çip Numarası min 3, max 20 karakter olabilir!")
    private String paChipNo;

    @Column(unique = true)
    @NotNull(message = "Bu alan boş olamaz!")
    @NotEmpty(message = "Bu alan boş olamaz!")
    @Length(min = 3,max = 20,message = "Karne/Küphe numarası min 3, max 20 karakter olabilir!")
    private String paAirTagNo;

    @NotNull(message = "Bu alan boş olamaz!")
    @NotEmpty(message = "Bu alan boş olamaz!")
    private String paBirthDate;

    @NotNull(message = "Bu alan boş olamaz!")
    @NotEmpty(message = "Bu alan boş olamaz!")
    private String paType; //Tür

    private String paSpay; //Kısırlaştırılmış on/off

    @NotNull(message = "Bu alan boş olamaz!")
    @NotEmpty(message = "Bu alan boş olamaz!")
    private String paKind; //Cins

    private String paColor;

    @NotNull(message = "Bu alan boş olamaz!")
    @NotEmpty(message = "Bu alan boş olamaz!")
    private String paSexType; //Cinsiyet

    private String saveDate;

    @ManyToOne(cascade = CascadeType.DETACH)
    @JoinColumn(name = "customer_cu_ıd")
    private Customer customer;


}

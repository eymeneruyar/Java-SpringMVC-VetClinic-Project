package vetcilinic.Entities;

import lombok.Data;
import org.hibernate.validator.constraints.Length;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.util.Date;

@Data
@Entity
public class Laboratory {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "labId", nullable = false)
    private Integer labId;

    @NotNull(message = "Hasta sahibi boş olamaz!")
    private Integer labCuId;

    @NotNull(message = "Laboratuvar türü boş olamaz!")
    @NotEmpty(message = "Laboratuvar türü boş olamaz!")
    private String labType;

    private String labFileName;

    @NotNull(message = "Teşhis boş olamaz!")
    @NotEmpty(message = "Teşhis boş olamaz!")
    @Length(min = 1,message = "Teşhis alanı min 1 karakter almalıdır!")
    @Column(columnDefinition = "text")
    private String labNote;

    @NotNull(message = "Hasta boş olamaz!")
    private Integer labPaId;

    private String labDate;


    @ManyToOne(cascade = CascadeType.DETACH)
    @JoinColumn(name = "patient_pa_ıd")
    private Patient patient;

    @ManyToOne(cascade = CascadeType.DETACH)
    @JoinColumn(name = "customer_cu_ıd")
    private Customer customer;


}

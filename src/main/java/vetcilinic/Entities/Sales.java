package vetcilinic.Entities;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.util.Date;

@Entity
@Data
public class Sales {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "sa_ıd", nullable = false)
    private Integer saId;

    private String saPrAmount;

    private String saVacAmount;

    private String saNote;

    private String saPayType;

    private String saLabType;

    @NotNull(message = "Bu alan boş olamaz!")
    @NotEmpty(message = "Bu alan boş olamaz!")
    private String saReceiptNo;

    private String saSoldDate;

    @ManyToOne(cascade = CascadeType.DETACH)
    @JoinColumn(name = "customerId")
    private Customer customer;

    @ManyToOne(cascade = CascadeType.DETACH)
    @JoinColumn(name = "patientId")
    private Patient patient;

    @ManyToOne(cascade = CascadeType.DETACH)
    @JoinColumn(name = "vaccineId")
    private Vaccine vaccine;

    @ManyToOne(cascade = CascadeType.DETACH)
    @JoinColumn(name = "productId")
    private Product product;
}

package vetcilinic.Entities;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

@Entity
@Data
public class SupplierProduct {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "sup_pro_ıd", nullable = false)
    private Integer supProId;

    @NotNull(message = "SupProName Null Olamaz")
    @NotEmpty(message = "SupProName Boş Olamaz")
    private String supProName;

    @NotNull(message = "SupProName Null Olamaz")
    @NotEmpty(message = "SupProName Boş Olamaz")
    private String supProUnit;

    @NotNull(message = "SupProPrice Null Olamaz")
    @NotEmpty(message = "SupProPrice Boş Olamaz")
    private Integer supProPrice;

    @ManyToOne(cascade = CascadeType.DETACH)
    @JoinColumn(name = "supllier_sup_ıd")
    private Supplier supplier;
}

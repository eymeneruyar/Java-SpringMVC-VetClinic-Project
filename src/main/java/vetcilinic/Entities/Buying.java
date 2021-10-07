package vetcilinic.Entities;

import lombok.Data;
import org.hibernate.validator.constraints.Length;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

@Entity
@Data
public class Buying {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "buy_ıd", nullable = false)
    private Integer buyId;

    @NotNull(message = "Fatura No Null olamaz!")
    @Column(unique = true)
    private Long buyReceiptNo;

    @NotNull(message = "Miktar Null Olamaz")
    @NotEmpty(message = "Miktar Boş Olamaz")
    @Length(min = 1, max = 5, message = "Miktar min 1, max 5 haneli olabilir. ")
    private String buyAmount;

    private String buyNote;

    private String buyUnit;

    private String buyDate;

    @ManyToOne(cascade = CascadeType.DETACH)
    @JoinColumn(name = "supplierId")
    private Supplier supplier;

    @ManyToOne(cascade = CascadeType.DETACH)
    @JoinColumn(name = "supplierProductId")
    private SupplierProduct supplierProduct;


}

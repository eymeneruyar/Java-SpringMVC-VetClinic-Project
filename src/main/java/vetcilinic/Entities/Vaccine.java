package vetcilinic.Entities;

import lombok.Data;
import org.hibernate.validator.constraints.Length;
import javax.persistence.*;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

@Entity
@Data
public class Vaccine {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "vaid", nullable = false)
    private Integer vacid;

    @NotNull(message = "Name Parametresi Null Olamaz")
    @NotEmpty(message = "Bu Alan Boş Bırakılamaz")
    @Length(min = 2, max = 100,message = "Ürün Adı en az 2 Karakter, en çok 100 Karakter Olmalıdır")
    private String vacName;

    @NotNull(message = "Unit Parametresi Null olamaz")
    @NotEmpty(message = "Bu Alan Boş Bırakılamaz")
    private String vacUnit;

    @NotNull(message = "Category Parametresi Null olamaz")
    @NotEmpty(message = "Bu Alan Boş Bırakılamaz")
    private String vacCategory;

    @NotNull(message = "Detail Parametresi Null olamaz")
    @NotEmpty(message = "Bu Alan Boş Bırakılamaz")
    @Length(min = 10, max = 300,message = "Ürün Detayı en az 10 Karakter, en çok 300 Karakter Olmalıdır")
    private String vacDetail;

    @NotNull(message = "Type Parametresi Null olamaz")
    @NotEmpty(message = "Bu alan boş bırakılamaz")
    private String vacType;

    @NotNull(message = "Supplier Parametresi Null olamaz")
    @NotEmpty(message = "Bu alan boş bırakılamaz")
    private String vacSupplier;

    @NotNull(message = "Barcode Parametresi Null olamaz")
    @Column(unique = true)
    private Long vacBarcode;

    @NotNull(message = "Code Parametresi Null olamaz")
    @Column(unique = true)
    private Long vacCode;

    @NotNull(message = "Tax Parametresi Null olamaz")
    @NotEmpty(message = "Bu alan boş bırakılamaz")
    private String vacTax;

    @NotNull(message = "BuyingPrice Parametresi Null olamaz")
    @Min(value = 1 , message = "Ürün Alış Fiyatı Min 1 olmalıdır.")
    private Integer vacBuyingPrice;

    @NotNull(message = "SalesPrice Parametresi Null olamaz")
    @Min(value = 1 , message = "Ürün Satış Fiyatı Min 1 olmalıdır.")
    private Integer vacSalesPrice;

    @NotNull(message = "Quantity Parametresi Null olamaz")
    @Min(value = 1 , message = "Ürün Miktarı Min 1 olmalıdır.")
    private Integer vacQuantity;


}

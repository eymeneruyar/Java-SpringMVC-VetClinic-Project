package vetcilinic.Entities;

import lombok.Data;
import org.hibernate.validator.constraints.Length;
import javax.persistence.*;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

@Data
@Entity
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="proId",nullable = false)
    private Integer proId;

    @NotNull(message = "Name Parametresi Null Olamaz")
    @NotEmpty(message = "Bu Alan Boş Bırakılamaz")
    @Length(min = 2, max = 100,message = "Ürün Adı en az 2 Karakter, en çok 100 Karakter Olmalıdır")
    private String proName;

    @NotNull(message = "Unit Parametresi Null olamaz")
    @NotEmpty(message = "Bu Alan Boş Bırakılamaz")
    private String proUnit;

    @NotNull(message = "Category Parametresi Null olamaz")
    @NotEmpty(message = "Bu Alan Boş Bırakılamaz")
    private String proCategory;

    @NotNull(message = "Detail Parametresi Null olamaz")
    @NotEmpty(message = "Bu Alan Boş Bırakılamaz")
    @Length(min = 10, max = 300,message = "Ürün Detayı en az 10 Karakter, en çok 300 Karakter Olmalıdır")
    private String proDetail;

    @NotNull(message = "Type Parametresi Null olamaz")
    @NotEmpty(message = "Bu alan boş bırakılamaz")
    private String proType;

    @NotNull(message = "Supplier Parametresi Null olamaz")
    @NotEmpty(message = "Bu alan boş bırakılamaz")
    private String proSupplier;

    @NotNull(message = "Barcode Parametresi Null olamaz")
    @Column(unique = true)
    private Integer proBarcode;

    @NotNull(message = "Code Parametresi Null olamaz")
    @Column(unique = true)
    private Integer proCode;

    @NotNull(message = "Tax Parametresi Null olamaz")
    @NotEmpty(message = "Bu alan boş bırakılamaz")
    private String proTax;

    @NotNull(message = "BuyingPrice Parametresi Null olamaz")
    @Min(value = 1 , message = "Ürün Alış Fiyatı Min 1 olmalıdır.")
    private Integer proBuyingPrice;

    @NotNull(message = "SalesPrice Parametresi Null olamaz")
    @Min(value = 1 , message = "Ürün Satış Fiyatı Min 1 olmalıdır.")
    private Integer proSalesPrice;

    @NotNull(message = "Quantity Parametresi Null olamaz")
    @Min(value = 1 , message = "Ürün Miktarı Min 1 olmalıdır.")
    private Integer proQuantity;



}

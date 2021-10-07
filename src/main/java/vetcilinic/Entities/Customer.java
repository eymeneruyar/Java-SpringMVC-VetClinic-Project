package vetcilinic.Entities;

import lombok.Data;
import org.hibernate.validator.constraints.Length;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.util.List;

@Data
@Entity
public class Customer {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "cuId", nullable = false)
    private Integer cuId;

    @NotNull(message = "Müşteri ismi boş olamaz!")
    @NotEmpty(message = "Müşteri ismi boş olamaz!")
    @Length(min = 2,max = 50,message = "Müşteri ismi min 2, max 50 karakter olabilir!")
    private String cuName;

    @NotNull(message = "Müşteri soyismi boş olamaz!")
    @NotEmpty(message = "Müşteri soyismi boş olamaz!")
    @Length(min = 2,max = 50,message = "Müşteri soyismi min 2, max 50 karakter olabilir!")
    private String cuSurname;

    @NotNull(message = "Müşteri TC/Vergi No boş olamaz!")
    @NotEmpty(message = "Müşteri TC/Vergi No boş olamaz!")
    @Length(min = 2,max = 50,message = "Müşteri TC/Vergi No min 2, max 50 karakter olabilir!")
    @Column(unique = true)
    private String cuTax;

    private String cuTaxOffice;

    @NotNull(message = "Müşteri telefon numarası boş olamaz!")
    @NotEmpty(message = "Müşteri telefon numarası boş olamaz!")
    @Length(min = 2,max = 11,message = "Müşteri telefon numarası min 2, max 11 karakter olabilir!")
    @Column(unique = true)
    private String cuPhone;

    private String cuPhone2;

    @NotNull(message = "Müşteri E-Mail boş olamaz!")
    @NotEmpty(message = "Müşteri E-Mail boş olamaz!")
    @Length(min = 2,max = 255,message = "Müşteri E-Mail adresi min 2, max 255 karakter olabilir!")
    @Column(unique = true)
    private String cuEmail;

    private String cuType;

    @NotNull(message = "Müşteri adres bilgileri İL bölülümü boş olamaz!")
    private int cuCity;

    @NotNull(message = "Müşteri adres bilgileri İLÇE bölülümü boş olamaz!")
    @NotEmpty(message = "Müşteri adres bilgileri İLÇE bölülümü boş olamaz!")
    @Length(min = 2,max = 50,message = "Müşteri adres bilgileri İLÇE bölülümü min 2, max 50 karakter olabilir!")
    private String cuTown;

    @NotNull(message = "Müşteri adres bilgileri ADRES bölülümü boş olamaz!")
    @NotEmpty(message = "Müşteri adres bilgileri ADRES bölülümü boş olamaz!")
    @Length(min = 2,max = 255,message = "Müşteri adres bilgileri ADRES bölülümü min 2, max 255 karakter olabilir!")
    private String cuAddress;

    private String cuNote;

}

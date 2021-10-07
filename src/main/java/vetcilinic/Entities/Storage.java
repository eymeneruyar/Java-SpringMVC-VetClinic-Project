package vetcilinic.Entities;

import lombok.Data;
import org.hibernate.validator.constraints.Length;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

@Data
@Entity
public class Storage {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "storId", nullable = false)
    private Integer storId;

    @NotNull(message = "Depo ismi boş olamaz!")
    @NotEmpty(message = "Depo ismi boş olamaz!")
    @Length(min = 1,max = 100,message = "Depo ismi min 1, max 100 karakter olabilir!")
    private String storName;

    @NotNull(message = "Depo kodu boş olamaz!")
    @NotEmpty(message = "Depo kodu boş olamaz!")
    @Length(min = 1,max = 25,message = "Depo kodu min 1, max 25 karakter olabilir!")
    private String storNo;

    @NotNull(message = "Depo durumu boş olamaz!")
    @NotEmpty(message = "Depo durumu boş olamaz!")
    @Length(min = 1,max = 25,message = "Depo durumu min 1, max 50 karakter olabilir!")
    private String storStatus;



}

//--------------------------------------- Project Information - Start ---------------------------------------//
/*
    Name: Süleyman KARACA
    Project Name: Vet Klinik
    Page: Treatment
    Version: v1.1
    GitHub: https://github.com/slymnkrc
    Date: 13.09.2021
*/
//--------------------------------------- Project Information - End -----------------------------------------//

package vetcilinic.Entities;

import lombok.Data;
import org.hibernate.validator.constraints.Length;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

@Entity
@Data
public class Treatment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "tre_ıd", nullable = false)
    private Integer treId;

    @NotNull(message = "Bu alan boş olamaz!")
    @NotEmpty(message = "Bu alan boş olamaz!")
    @Length(min = 2, max = 200)
    private String treNote;

    private String treLab;

    private String treOperation;

    private String treDressing;

    private String treRadiography;

    private String treMedicine;

    @NotNull(message = "Bu alan boş olamaz!")
    private Long treCode;


    @ManyToOne(cascade = CascadeType.DETACH)
    @JoinColumn(name = "customerId")
    private Customer customer;


    @ManyToOne(cascade = CascadeType.DETACH)
    @JoinColumn(name = "patientId")
    private Patient patient;

    @ManyToOne(cascade = CascadeType.DETACH)
    @JoinColumn(name = "vaccineId")
    private Vaccine vaccine;

}

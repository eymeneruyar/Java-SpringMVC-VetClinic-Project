package vetcilinic.Entities;

import lombok.Data;
import org.hibernate.validator.constraints.Length;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.util.Date;

@Data
@Entity
public class Agenda {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "agendaId", nullable = false)
    private Integer agendaId;

    @NotNull(message = "Bu alan boş olamaz!")
    @NotEmpty(message = "Bu alan boş olamaz!")
    @Length(min = 1,max = 250,message = "Bu alana min 1, max 250 karakter girilmelidir!")
    private String agendaTitle;

    @NotNull(message = "Bu alan boş olamaz!")
    @NotEmpty(message = "Bu alan boş olamaz!")
    private String agendaDate;

    @NotNull(message = "Bu alan boş olamaz!")
    @NotEmpty(message = "Bu alan boş olamaz!")
    @Length(min = 1,max = 1000,message = "Bu alana min 1, max 1000 karakter girilmelidir!")
    private String agendaNote;

    private String saveDate;

    private Integer uid;

}

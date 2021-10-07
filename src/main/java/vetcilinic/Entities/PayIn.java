
package vetcilinic.Entities;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;

@Entity
@Data
public class PayIn {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "pin_ıd", nullable = false)
    private Integer pinId;

    private String pinNote;

    private Integer pinAmount;

    private String pinPayType;

    private String createdDate;

    @ManyToOne(cascade = CascadeType.DETACH)
    @JoinColumn(name = "salesId")
    private Sales sales;

}

package vetcilinic.Entities;

import lombok.Data;

import javax.persistence.*;

@Entity
@Data
public class PayOut {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "po_ıd", nullable = false)

    private Integer poId;

    private String poutNote;

    private Integer poutAmount;

    private String poutPayType;

    private String createdDate;

    @ManyToOne(cascade = CascadeType.DETACH)
    @JoinColumn(name = "buyingId")
    private Buying buying;
}

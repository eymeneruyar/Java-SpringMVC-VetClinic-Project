package vetcilinic.Entities;

import lombok.Data;

import javax.persistence.*;

@Entity
@Data
public class BuyingPayment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "bu_id", nullable = false)
    private Integer buId;

    @ManyToOne(cascade = CascadeType.DETACH)
    @JoinColumn(name = "buyingId")
    private Buying buying;

    private Integer TotalDebt;

    private Integer RemainDebt;

}

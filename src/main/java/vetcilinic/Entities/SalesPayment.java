package vetcilinic.Entities;

import lombok.Data;

import javax.persistence.*;

@Entity
@Data
public class SalesPayment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "sa_pa_ıd", nullable = false)
    private Integer saPaId;

    @ManyToOne(cascade = CascadeType.DETACH)
    @JoinColumn(name = "salesId")
    private Sales sales;

    private Integer TotalDebt;

    private Integer RemainDebt;

}

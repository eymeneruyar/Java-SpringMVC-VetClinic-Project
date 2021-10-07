package vetcilinic.Entities;

import lombok.Data;

import javax.persistence.*;

@Data
@Entity
public class Towns {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ilce_id", nullable = false)
    private Integer id;

    @Column(name = "ilce_title")
    private String name;

    @Column(name = "ilce_key")
    private Integer townKey;

    @Column(name = "ilce_sehirkey")
    private Integer townCityKey;


}

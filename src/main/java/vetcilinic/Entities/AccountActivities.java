package vetcilinic.Entities;

import lombok.Data;

import javax.persistence.*;
import java.time.LocalDateTime;

@Data
@Entity
public class AccountActivities {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Integer id;

    private String nameInfo;
    private String surnameInfo;
    private String emailInfo;
    private String sessionInfo;
    private String ipInfo;
    private String roleInfo;
    private String urlInfo;
    private String dateInfo;
    private String imageFile;

    public AccountActivities() {}

    public AccountActivities(String nameInfo, String surnameInfo, String emailInfo, String sessionInfo, String ipInfo, String roleInfo, String urlInfo, String dateInfo) {
        this.nameInfo = nameInfo;
        this.surnameInfo = surnameInfo;
        this.emailInfo = emailInfo;
        this.sessionInfo = sessionInfo;
        this.ipInfo = ipInfo;
        this.roleInfo = roleInfo;
        this.urlInfo = urlInfo;
        this.dateInfo = dateInfo;
    }

}

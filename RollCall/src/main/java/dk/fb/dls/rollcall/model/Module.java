package dk.fb.dls.rollcall.model;

import lombok.Data;
import javax.persistence.*;

@Data
@Entity
public class Module {
    @Id
    private long id;
    private String date;

    @ManyToOne(cascade = {CascadeType.MERGE})
    private Subject subject;
}

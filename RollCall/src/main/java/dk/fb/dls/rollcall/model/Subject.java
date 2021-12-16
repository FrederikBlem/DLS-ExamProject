package dk.fb.dls.rollcall.model;

//import dk.fb.dls.rollcall.DTO.SubjectDTO;
import lombok.Data;

import javax.persistence.*;

@Data
@Entity
@Table(name = "Subjects")
public class Subject {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(unique = true)
    private String name;


}

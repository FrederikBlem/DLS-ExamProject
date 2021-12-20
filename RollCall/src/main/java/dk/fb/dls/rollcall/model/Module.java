package dk.fb.dls.rollcall.model;

import lombok.Data;
import javax.persistence.*;
import java.util.*;

@Data
@Entity
@Table(name = "module")
public class Module {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "module_id")
    private int id;

    @Column(name = "teacher_id")
    private int module_teacher_id;

    @Column(name = "subject_id")
    private int module_subject_id;

    @Column(name = "module_date")
    private String module_date;

    @Column(name = "module_code")
    private String module_code;

    
}

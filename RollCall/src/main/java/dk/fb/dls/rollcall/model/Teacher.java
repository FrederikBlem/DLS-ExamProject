package dk.fb.dls.rollcall.model;

import javax.persistence.*;
import java.util.*;

@Entity
@Table(name = "Teacher")
public class Teacher {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(unique = true)
    private String email;

    private String password;

    private String fullName;

    @OneToMany(cascade = {CascadeType.MERGE, CascadeType.PERSIST})
    private List<Subject> subjects;

    public Teacher() {}

}

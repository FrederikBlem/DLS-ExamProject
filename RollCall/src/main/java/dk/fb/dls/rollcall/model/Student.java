package dk.fb.dls.rollcall.model;

import lombok.Data;
import javax.persistence.*;
import java.util.*;

@Data
@Entity
@Table(name = "Student")
public class Student {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(unique = true)
    private String email;

    private String password;
    private String fullName;
    private String phoneNumber;

    @ManyToMany(cascade = {CascadeType.MERGE})
    private List<Subject> subjects;

    public Student() {}

}

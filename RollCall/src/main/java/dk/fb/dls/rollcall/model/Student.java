package dk.fb.dls.rollcall.model;

import lombok.Data;
import javax.persistence.*;
import java.util.*;

@Data
@Entity
public class Student {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "student_email",unique = true)
    private String email;

    @Column(name = "student_password")
    private String password;

    @Column(name = "student_phone_number")
    private String phoneNumber;


    public Student() {
        super();
    }

    public Student(String email, String password, String phoneNumber){
        this.email = email;
        this.password = password;
        this.phoneNumber = phoneNumber;
    }
}

package dk.fb.dls.rollcall.model;

import lombok.Data;
import javax.persistence.*;
import java.util.*;

@Data
@Entity
@Table(name = "student")
public class Student {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "student_id")
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

    @Override
    public String toString(){
        StringBuilder builder = new StringBuilder();

        builder.append(String.valueOf(id));
        builder.append(", ");
        builder.append(email);
        builder.append(", ");
        builder.append(password);
        builder.append(", ");
        builder.append(phoneNumber);

        return builder.toString();
    }
}

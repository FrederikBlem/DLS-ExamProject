package dk.fb.dls.rollcall.service;

import java.util.*;
import dk.fb.dls.rollcall.model.Student;
import dk.fb.dls.rollcall.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;

public interface StudentService {
    List<Student> findAllStudents();
    Student findById(long id);
    Student insert(Student p);
    boolean delete(long id);

}

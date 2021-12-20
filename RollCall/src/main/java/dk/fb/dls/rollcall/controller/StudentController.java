package dk.fb.dls.rollcall.controller;

import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.linkTo;
import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.methodOn;
import java.net.URI;
import java.util.*;
import java.util.stream.Collectors;

import dk.fb.dls.rollcall.errorhandling.StudentNotFoundException;
import dk.fb.dls.rollcall.model.Student;
import dk.fb.dls.rollcall.repository.StudentRepository;
import dk.fb.dls.rollcall.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.hateoas.CollectionModel;
import org.springframework.hateoas.EntityModel;
import org.springframework.hateoas.Link;
import org.springframework.hateoas.server.mvc.WebMvcLinkBuilder;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

@RestController
@RequestMapping("/students")
public class StudentController {

    @Autowired
    StudentRepository repo;

    @GetMapping("/all")
    public CollectionModel<EntityModel<Student>> retrieveAllStudents()
    {
        CollectionModel<Student> studentCollection = CollectionModel.of(repo.findAll());
        List<EntityModel<Student>> studentList = repo.findAll().stream().map(student ->
                        EntityModel.of(student,
                                linkTo(methodOn(StudentController.class).retrieveStudent(student.getId())).withSelfRel(),
                                linkTo(methodOn(StudentController.class).retrieveAllStudents()).withRel("All Students")))
                .collect(Collectors.toList());

        return CollectionModel.of(studentList, linkTo(methodOn(StudentController.class).retrieveAllStudents()).withSelfRel());
    }

    @GetMapping("/{id}")
    public EntityModel<Student> retrieveStudent(@PathVariable int id){
        Optional<Student> student = repo.findById(id);
        if (student.isEmpty())
            throw new StudentNotFoundException("id: " + id);

        EntityModel<Student> resource = EntityModel.of(student.get()); 						// get the resource
        WebMvcLinkBuilder linkTo = linkTo(methodOn(this.getClass()).retrieveAllStudents()); // get link
        resource.add(linkTo.withRel("all-students"));										// append the link

        Link selfLink = linkTo(methodOn(this.getClass()).retrieveStudent(id)).withSelfRel(); //add also link to self
        resource.add(selfLink);
        return resource;
    }
}

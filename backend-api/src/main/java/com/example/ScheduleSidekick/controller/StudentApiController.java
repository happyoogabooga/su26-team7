package com.example.ScheduleSidekick.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.ScheduleSidekick.entity.Student;
import com.example.ScheduleSidekick.service.StudentService;

@RestController
@RequestMapping("/api/students")
public class StudentApiController {
    private final StudentService studentService;
    
    StudentApiController(StudentService studentService){
        this.studentService = studentService;
    }

    @GetMapping("/{id}")
    public ResponseEntity<Student> getStudentById(@PathVariable long id) {
        Student student = studentService.getStudentById(id);
        if(student != null){
            return ResponseEntity.ok(student);
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    @PostMapping
    public ResponseEntity<Student> createAccount(@RequestBody Student student){
        Student createdStudent = studentService.createAccount(student);
        // Fixed: Returns the database payload with its newly assigned ID
        return ResponseEntity.status(201).body(createdStudent);
    }

    @PutMapping("/{id}")
    public ResponseEntity<Student> putMethodName(@PathVariable long id, @RequestBody Student updatedStudent){
        try {
            Student student = studentService.updateStudent(id, updatedStudent);
            return student != null ? ResponseEntity.ok(student) : ResponseEntity.notFound().build();
        } catch (RuntimeException e){
            return ResponseEntity.notFound().build();
        }
    }

    @PutMapping("/{id}/editpersonalinfo")
    public ResponseEntity<Student> updatePersonalInformation(@PathVariable long id, @RequestBody Student updatedStudent){
        try {
            Student student = studentService.updatePersonalInfo(id, updatedStudent);
            return student != null ? ResponseEntity.ok(student) : ResponseEntity.notFound().build();
        } catch(RuntimeException e){
            return ResponseEntity.notFound().build();
        }
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteStudent(@PathVariable long id){
        boolean deleted = studentService.deleteAccount(id);
        return deleted ? ResponseEntity.noContent().build() : ResponseEntity.notFound().build();
    }
}
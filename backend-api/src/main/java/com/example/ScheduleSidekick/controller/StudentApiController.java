package com.example.ScheduleSidekick.controller;

import java.util.Collections;
import java.util.List;

import javax.swing.plaf.basic.BasicBorders;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.ScheduleSidekick.service.StudentService;
import com.example.ScheduleSidekick.entity.Student;


@RestController
@RequestMapping("/api/students")
public class StudentApiController{
    private final StudentService studentService;
    
    StudentApiController(StudentService studentService){
        this.studentService = studentService;
    }

    @GetMapping("/{id}")
    public ResponseEntity<Student> getStudentById(@PathVariable long id) {
        Student student = studentService.getStudentById(id);
        if(student != null){
            return ResponseEntity.ok(student);
        }
        else{
            return ResponseEntity.notFound().build();
        }
    }
    //post mapping
    @PostMapping()
    public ResponseEntity<Student> createAccount(@RequestBody Student student){
        Student createdStudent = studentService.createAccount(student);
        return ResponseEntity.created(null).body(student);
    }
    @PutMapping("/{id}")
    public ResponseEntity<Student> putMethodName(@PathVariable long id, @RequestBody Student updatedStudent){
        try{
            Student student = studentService.updateStudent(id, updatedStudent);
            return ResponseEntity.ok(student);
        } catch (RuntimeException e){
            return ResponseEntity.notFound().build();
        }
    }
    @PutMapping("/{id}/editpersonalinfo")
    public ResponseEntity<Student> updatePersonalInformation(@PathVariable Long id, @RequestBody Student UpdatedStudent){
        try{
            Student student = studentService.updatePersonalInfo(id, UpdatedStudent);
            return ResponseEntity.ok(student);
        } catch(RuntimeException e){
            return ResponseEntity.notFound().build();
        }
    }
    //Delete mapping
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteStudent(@PathVariable long id){
        studentService.deleteAccount(id);
        return ResponseEntity.noContent().build();
    }
}
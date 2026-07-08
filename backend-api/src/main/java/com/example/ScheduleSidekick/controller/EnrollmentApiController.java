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

import com.example.ScheduleSidekick.service.EnrollmentService;
import com.example.ScheduleSidekick.entity.Enrollment;
import org.springframework.web.bind.annotation.RequestParam;



@RestController
@RequestMapping("/api/enrollments")
public class EnrollmentApiController {
    private final EnrollmentService enrollmentService;

    public EnrollmentApiController(EnrollmentService enrollmentService) {
        this.enrollmentService = enrollmentService;
    }
    @PostMapping()
    public ResponseEntity<Enrollment> bookTrainingSession(@RequestBody Enrollment enrollment) {
        Enrollment Enroll = enrollmentService.createEnrollment(enrollment);
        return ResponseEntity.ok(Enroll);
    }
    @GetMapping("/{id}")
    public ResponseEntity<Enrollment> getEnrollmentById(@PathVariable long id){
        Enrollment enrollment = enrollmentService.getByEnrollmentId(id);
        return ResponseEntity.ok(enrollment);
    }
    @GetMapping("/student/{studentId}")
    public ResponseEntity<List<Enrollment>> getEnrollmentsByStudent(@PathVariable long id){
        List<Enrollment> enrollments = enrollmentService.getEnrollmentsByStudentId(id);
        return ResponseEntity.ok(enrollments);
    }
}

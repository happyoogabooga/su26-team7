package com.example.ScheduleSidekick.controller;

import java.util.List;
import java.util.Collections;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.ScheduleSidekick.entity.Enrollment;
import com.example.ScheduleSidekick.service.EnrollmentService;

@RestController
@RequestMapping("/api/enrollments")
public class EnrollmentApiController {
    private final EnrollmentService enrollmentService;

    public EnrollmentApiController(EnrollmentService enrollmentService) {
        this.enrollmentService = enrollmentService;
    }

    @PostMapping
    public ResponseEntity<Enrollment> createEnrollment(@RequestBody Enrollment enrollment) {
        Enrollment created = enrollmentService.createEnrollment(enrollment);
        return ResponseEntity.ok(created);
    }
    @GetMapping("/roster/{id}")
    public ResponseEntity<List<Enrollment>> getEnrollmentByCourseId(@PathVariable long id){
        List<Enrollment> enrollment = enrollmentService.getEnrollmentByCourseId(id);
        if(enrollment.isEmpty()){
            return ResponseEntity.ok(Collections.emptyList());
        }
        return ResponseEntity.ok(enrollment);
    }
    @GetMapping("/{id}")
    public ResponseEntity<Enrollment> getEnrollmentById(@PathVariable long id) {
        Enrollment enrollment = enrollmentService.getByEnrollmentId(id);
        return enrollment != null ? ResponseEntity.ok(enrollment) : ResponseEntity.notFound().build();
    }

    @GetMapping("/student/{studentId}")
    public ResponseEntity<List<Enrollment>> getEnrollmentsByStudent(@PathVariable long studentId) {
        List<Enrollment> enrollments = enrollmentService.getEnrollmentsByStudentId(studentId);
        if(enrollments.isEmpty()){
            return ResponseEntity.ok(Collections.emptyList());
        }
        return ResponseEntity.ok(enrollments);
    }
}
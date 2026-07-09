package com.example.ScheduleSidekick.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.ScheduleSidekick.entity.Enrollment;
import com.example.ScheduleSidekick.repository.EnrollmentRepository;

@Service
public class EnrollmentService {
    private final EnrollmentRepository enrollmentRepository;

    public EnrollmentService(EnrollmentRepository enrollmentRepository) {
        this.enrollmentRepository = enrollmentRepository;
    }

    public List<Enrollment> getEnrollmentsByStudentId(long id) {
        return enrollmentRepository.findByStudentId(id);
    }

    public Enrollment getByEnrollmentId(long id) {
        return enrollmentRepository.findById(id).orElse(null);
    }
    public List<Enrollment> getEnrollmentByCourseId(long id){
        return enrollmentRepository.findByCourseId(id);
    }
    public Enrollment createEnrollment(Enrollment enrollment) {
        return enrollmentRepository.save(enrollment);
    }

    public void deleteEnrollment(long id) {
        enrollmentRepository.deleteById(id);
    }
}
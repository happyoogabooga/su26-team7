package com.example.ScheduleSidekick.service;

import java.util.List;


import com.example.ScheduleSidekick.repository.EnrollmentRepository;
import com.example.ScheduleSidekick.entity.Enrollment;

import org.springframework.stereotype.Service;

@Service
public class EnrollmentService {
    private final EnrollmentRepository enrollmentRepository;
    public EnrollmentService(EnrollmentRepository enrollmentRepository){
        this.enrollmentRepository = enrollmentRepository;
    }
    //I need to post and enrollement after every sign in
    public List<Enrollment> getEnrollmentByStudentId(long id){
        return enrollmentRepository.findByStudentId(id);
    }
    public Enrollment getByEnrollmentId(long Id){
        return enrollmentRepository.findbyEnrollmentId(Id);
    }
    //place to find by class ID
    public Enrollment createEnrollment(Enrollment enrollment){
        return enrollmentRepository.save(enrollment);
    }
    public void deleteEnrollment(long id){
        enrollmentRepository.deleteById(id);
    }
    
}

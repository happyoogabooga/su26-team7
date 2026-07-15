package com.example.ScheduleSidekick.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.ScheduleSidekick.entity.Enrollment;
import com.example.ScheduleSidekick.entity.Student;
import com.example.ScheduleSidekick.entity.Course;
import com.example.ScheduleSidekick.repository.EnrollmentRepository;

@Service
public class EnrollmentService {
    private final EnrollmentRepository enrollmentRepository;
    private final CourseService courseService;
    private final StudentService studentService;

    public EnrollmentService(EnrollmentRepository enrollmentRepository, CourseService courseService, StudentService studentService) {
        this.enrollmentRepository = enrollmentRepository;
        this.courseService = courseService;
        this.studentService = studentService;
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
    
    public List<Enrollment> getEnrollmentByStudentId(long id){
        return enrollmentRepository.findByStudentId(id);
    }

    public Enrollment createEnrollment(Enrollment enrollment) {
        return enrollmentRepository.save(enrollment);
    }

    public Enrollment createEnrollmentByIds(long studentid, long courseid){
        Enrollment enrollment = new Enrollment();
        
        Student student = studentService.getStudentById(studentid);
        Course course =  courseService.getCourseByid(courseid);


        enrollment.setStudent(student);
        enrollment.setCourse(course);

        return enrollmentRepository.save(enrollment);
    }

    public boolean deleteEnrollment(long id) {
        if(enrollmentRepository.existsById(id)){
            enrollmentRepository.deleteById(id);
            return true;
        }
        return false;
    }
}
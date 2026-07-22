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
        Enrollment saved = enrollmentRepository.save(enrollment);
        courseService.syncCurrentEnrollment(enrollment.getCourse().getId());
        return saved;
    }

    public Enrollment createEnrollmentByIds(long studentid, long courseid){
        Enrollment enrollment = new Enrollment();
        
        Student student = studentService.getStudentById(studentid);
        Course course =  courseService.getCourseByid(courseid);


        enrollment.setStudent(student);
        enrollment.setCourse(course);

        Enrollment Saved = enrollmentRepository.save(enrollment);
        courseService.syncCurrentEnrollment(courseid);

        return Saved;
    }

    public boolean deleteEnrollment(long id) {
        if(enrollmentRepository.existsById(id)){
            Enrollment enrollment = getByEnrollmentId(id);
            long courseid = enrollment.getCourse().getId();

            enrollmentRepository.deleteById(id);
            courseService.syncCurrentEnrollment(courseid);

            return true;
        }
        return false;
    }
}
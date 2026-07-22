package com.example.ScheduleSidekick.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.ScheduleSidekick.entity.Course;
import com.example.ScheduleSidekick.repository.CourseRepository;
import com.example.ScheduleSidekick.repository.EnrollmentRepository;
@Service
public class CourseService {
    private final CourseRepository courseRepository;
    private final EnrollmentRepository enrollmentRepository;
    public CourseService(CourseRepository courseRepository, EnrollmentRepository enrollmentRepository) {
        this.courseRepository = courseRepository;
        this.enrollmentRepository = enrollmentRepository;
    }

    public List<Course> getAllCourses() {
        return courseRepository.findAll();
    }

    // get course
    public Course getCourseByid(Long id) {
        return courseRepository.findById(id).orElse(null);
    }

    public List<Course> getCourseByTeacherId(long id) {
        return courseRepository.findByTeacherId(id);
    }

    // get course byignorecase
    public List<Course> getCourseByCode(String category) {
        return courseRepository.findByCodeContainingIgnoreCase(category);
    }

    // create course
    public Course createCourse(Course course) {

        return courseRepository.save(course);
    }

    // Update Course
    public Course updateCourse(long id, Course course) {
        Course existingCourse = courseRepository.findById(id).orElse(null);
        if (existingCourse != null) {
            existingCourse.setName(course.getName());
            existingCourse.setCode(course.getCode());
            existingCourse.setSection(course.getSection());
            existingCourse.setDays(course.getDays());
            existingCourse.setStartTime(course.getStartTime());
            existingCourse.setEndTime(course.getEndTime());
            existingCourse.setTerm(course.getTerm());
            existingCourse.setLocation(course.getLocation());
            existingCourse.setDescription(course.getDescription());
            existingCourse.setMaxEnrollment(course.getMaxEnrollment());
            return courseRepository.save(existingCourse);
        }
        return null;
    }

    // Delete Course
    public boolean DeleteCourse(long id) {
        if (courseRepository.existsById(id)) {
            courseRepository.deleteById(id);
            return true;
        }
        return false;
    }

    public Course syncCurrentEnrollment(long courseId) {
        Course course = courseRepository.findById(courseId).orElse(null);
        if (course != null) {
            int count = enrollmentRepository.findByCourseId(courseId).size();
            
            course.setCurrentEnrollment(count);
            return courseRepository.save(course);
        }
        return null;
    }
}

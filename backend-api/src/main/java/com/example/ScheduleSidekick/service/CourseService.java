package com.example.ScheduleSidekick.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.ScheduleSidekick.entity.Course;
import com.example.ScheduleSidekick.repository.CourseRepository;

@Service
public class CourseService {
    private final CourseRepository courseRepository;

    public CourseService(CourseRepository courseRepository) {
        this.courseRepository = courseRepository;
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

    // Delte Course
    public boolean DeleteCourse(long id) {
        if (courseRepository.existsById(id)) {
            courseRepository.deleteById(id);
            return true;
        }
        return false;
    }
}

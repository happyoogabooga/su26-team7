package com.example.ScheduleSidekick.controller;

import java.util.Collections;
import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.ScheduleSidekick.entity.Course;
import com.example.ScheduleSidekick.service.CourseService;

@RestController
@RequestMapping("/api/course")
public class CourseApiController {
    private final CourseService courseService;

    public CourseApiController(CourseService courseService) {
        this.courseService = courseService;
    }

    @GetMapping
    public ResponseEntity<List<Course>> getCourses() {
        List<Course> course = courseService.getAllCourses();
        if (course.isEmpty()) {
            return ResponseEntity.ok(Collections.emptyList());
        }
        return ResponseEntity.ok(course);
    }
    @GetMapping("/search")
    public ResponseEntity<List<Course>> getByCode(@RequestParam String query){
        List<Course> course = courseService.getCourseByCode(query);
        if (course.isEmpty()) {
            return ResponseEntity.ok(Collections.emptyList());
        }
        return ResponseEntity.ok(course);
    }

    @PostMapping
    public ResponseEntity<Course> createCourse(@RequestBody Course course) {
        Course createdCourse = courseService.createCourse(course);
        return ResponseEntity.ok(createdCourse);
    }

    @PutMapping("/{id}")
    public ResponseEntity<Course> updateCourse(@PathVariable long id, @RequestBody Course updatedCourse) {
        Course course = courseService.updateCourse(id, updatedCourse);
        if (course != null) {
            return ResponseEntity.ok(course);
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteCourse(long id) {
        boolean deleted = courseService.DeleteCourse(id);
        if (deleted) {
            return ResponseEntity.noContent().build();
        } else {
            return ResponseEntity.notFound().build();
        }
    }
}

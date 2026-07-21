package com.example.ScheduleSidekick.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.ScheduleSidekick.entity.Course;

@Repository
public interface CourseRepository extends JpaRepository<Course, Long> {
    List<Course> findByCodeContainingIgnoreCase(String coursename); // change this to or find by teacher

    List<Course> findByTeacherId(long id);
}

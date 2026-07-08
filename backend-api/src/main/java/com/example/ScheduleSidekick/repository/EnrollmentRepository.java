package com.example.ScheduleSidekick.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.ScheduleSidekick.entity.Enrollment;

@Repository
public interface EnrollmentRepository extends JpaRepository<Enrollment, Long> {
    // Standard query path: travels through Enrollment -> Student -> id
    List<Enrollment> findByStudentId(long studentId);
}
package com.example.ScheduleSidekick.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.ScheduleSidekick.entity.Student;

@Repository
public interface StudentRepository extends JpaRepository<Student, Long> {
    Student findByEmailAndPassword(String email, String password);
    Student findByname(String name); // Note: Should ideally be findByName to follow camelCase conventions
    Student findByEmail(String email);
}
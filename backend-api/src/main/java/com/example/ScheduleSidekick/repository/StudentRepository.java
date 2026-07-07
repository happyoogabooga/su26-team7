package com.example.ScheduleSidekick.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.ScheduleSidekick.entity.Student;

@Repository
public interface StudentRepository extends JpaRepository<Student, Long>{
    Student findByname(String name);
    Student findByEmail(String email);
}

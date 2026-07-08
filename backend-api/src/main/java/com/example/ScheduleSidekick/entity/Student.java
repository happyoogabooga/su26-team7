package com.example.ScheduleSidekick.entity;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "students")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Student {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id") // Forces the column name in the DB to be studentId
    private long id; // Changed from 'id' to 'studentId'

    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private String email;

    @Column(nullable = false)
    private String password;

    @Column(nullable = false)
    private int classYear;

    @Column
    private int enrolledHours;
    
    public Student(String name, String email, String password, int classYear, int enrolledHours){
        this.name = name;
        this.email = email; 
        this.password = password;
        this.classYear = classYear;
        this.enrolledHours = enrolledHours;
    }

    @OneToMany(mappedBy = "student")
    @JsonIgnoreProperties({"student"})
    private List<Enrollment> enrollment;
}
package com.example.ScheduleSidekick.entity;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "enrollment")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Enrollment {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id") // Forces exact database column casing
    private long id; // Fixed convention to lowercase 'e'

    @ManyToOne
    @JsonIgnoreProperties({"enrollment"})
    @JoinColumn(nullable = false) // Maps directly to studentId column in the students table
    private Student student;
    
    @ManyToOne
    @JsonIgnoreProperties({"enrollment"})
    @JoinColumn(nullable = false)
    private Course course;

    // Custom constructor
    public Enrollment(Student student){
        this.student = student;
    }
}
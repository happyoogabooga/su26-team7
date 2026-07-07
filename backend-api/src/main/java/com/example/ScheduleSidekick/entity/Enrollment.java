package com.example.ScheduleSidekick.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "customers")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Enrollment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    long enrollmentId;

    @ManyToOne
    @JoinColumn(nullable = false)
    Student student;

    @ManyToOne
    @JoinColumn(nullable = false)
    Course course;

    public Enrollment(Student student, Course course){
        this.student = student;
        this.course = course;
    }
}

package com.example.ScheduleSidekick.entity;

import java.time.LocalTime;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonFormat;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "courses")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Course {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private long id;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private String code; // Example: csc340

    @Column(nullable = false)
    private String section;

    @Column(nullable = false)
    private String days; // days this class will occur on

    @Column(name = "starttime")
    @JsonFormat(pattern = "HH:mm:ss")
    private LocalTime startTime;

    @Column(name = "endtime")
    @JsonFormat(pattern = "HH:mm:ss")
    private LocalTime endTime;

    @Column(nullable = false)
    private String term;

    @Column(nullable = false)
    private String location;

    @Column
    private String description;

    @Column(name = "maxenrollment")
    private int maxEnrollment;

    @Column(name = "currentenrollment")
    private int currentEnrollment;

    public Course(String name, String code, String section, String days, String term, LocalTime startTime,
            LocalTime endTime, String location, String description, int maxEnrollment, int currentEnrollment) {
        this.name = name;
        this.code = code;
        this.section = section;
        this.days = days;
        this.startTime = startTime;
        this.endTime = endTime;
        this.term = term;
        this.location = location;
        this.description = description;
        this.maxEnrollment = maxEnrollment;
        this.currentEnrollment = currentEnrollment;
    }

    @OneToMany(mappedBy = "course")
    @JsonIgnore
    List<Enrollment> enrollments;

    @OneToMany(mappedBy = "course")
    @JsonIgnore
    List<Question> questions;

    @ManyToOne
    @JsonIgnoreProperties({ "courses" })
    @JoinColumn(nullable = false) // Maps directly to teacher id column in the teachers table
    private Teacher teacher;

}
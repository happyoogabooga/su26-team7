package com.example.ScheduleSidekick.entity;

import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "customers")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Course {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long couresId;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private String code;            //Example: csc340

    @Column(nullable = false)
    private String section;

    @Column(nullable = false)
    List<String> days;                 //days this class will occur on

    @Column(nullable = false)
    String time;

    @Column(nullable = false)
    String term;

    @Column(nullable = false)
    String location;

    @Column(nullable = false)
    String description;

    @Column(nullable = false)
    int maxEnrollment;

    public Course(String name, String code, String section, List<String> days, String time, String term, String location, String description, int maxEnrollment){
        this.name = name;
        this.code = code;
        this.section = section;
        this.days = days;
        this.time = time;
        this.term = term;
        this.location = location;
        this.description = description;
        this.maxEnrollment = maxEnrollment;
    }
}

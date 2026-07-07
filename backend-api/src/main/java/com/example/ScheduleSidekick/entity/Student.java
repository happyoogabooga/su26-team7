package com.example.ScheduleSidekick.entity;

import java.util.List;

import jakarta.persistence.OneToMany;
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
public class Student {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    long studentId;

    @Column(nullable = false)
    String name;

    @Column(nullable = false)
    String email;

    @Column(nullable = false)
    String password;

    @Column(nullable = false)
    int classYear;              //freshman, sophomore, junior etc.

    @Column
    int enrolledHours;
    
    public Student(String name, String email, String password, int classYear, int enrolledHours){
        this.name = name;
        this.email = email; 
        this.password = password;
        this.classYear = classYear;
        this.enrolledHours = enrolledHours;
    }
    @OneToMany(mappedBy = "Student")
    private List<Enrollment> enrollment;
}

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
@Table(name = "teachers")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Teacher {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private String email;

    @Column(nullable = false)
    private String password;

    @Column(nullable = false)
    private String department;

    @Column(nullable = false, columnDefinition = "TEXT")
    private String bio;

    public Teacher(String name, String email, String password, String department, String bio) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.department = department;
        this.bio = bio;
    }

    @OneToMany(mappedBy = "teacher")
    @JsonIgnoreProperties({ "teacher" })
    private List<Course> courses;

}

package com.example.ScheduleSidekick.service;
import java.util.List;

import org.springframework.stereotype.Service;
import java.util.ArrayList;

import com.example.ScheduleSidekick.entity.Student;
import com.example.ScheduleSidekick.entity.Enrollment;


import com.example.ScheduleSidekick.repository.StudentRepository;

@Service
public class StudentService {
    private final StudentRepository studentRepository;

    public StudentService(StudentRepository studentRepository) {
        this.studentRepository = studentRepository;
    }

    public Student getStudentByEmailandPassword(String email, String password){
        return studentRepository.findByEmailAndPassword(email, password);
    }
    
    public Student getStudentById(long id) {
        return studentRepository.findById(id).orElse(null);
    }

    public List<Student> getAllStudents(){
        return studentRepository.findAll();
    }
    public Student createAccount(Student student) {
        return studentRepository.save(student);
    }

    public Student updateStudent(long id, Student updatedStudent) {
        Student currentStudent = studentRepository.findById(id).orElse(null);
        if (currentStudent != null) {
            currentStudent.setName(updatedStudent.getName());
            // FIX: Fixed typo where name was used instead of email
            currentStudent.setEmail(updatedStudent.getEmail()); 
            currentStudent.setPassword(updatedStudent.getPassword());
            currentStudent.setClassYear(updatedStudent.getClassYear());
            currentStudent.setEnrolledHours(updatedStudent.getEnrolledHours());
            return studentRepository.save(currentStudent);
        }
        return null;
    }

    public Student updatePassword(long id, String password) {
        Student currentStudent = studentRepository.findById(id).orElse(null);
        if (currentStudent != null) {
            currentStudent.setPassword(password);
            return studentRepository.save(currentStudent);
        }
        return null;
    }

    public Student updatePersonalInfo(long id, String Email, String Password, String Name) {
        Student currentStudent = studentRepository.findById(id).orElse(null);
        if (currentStudent != null) {
            currentStudent.setEmail(Email);
            currentStudent.setPassword(Password);
            currentStudent.setName(Name);
            return studentRepository.save(currentStudent);
        }
        return null;
    }

    public boolean deleteAccount(long id) {
        if (studentRepository.existsById(id)) {
            studentRepository.deleteById(id);
            return true;
        }
        return false;
    }
    public List<String> courseCodesByStudentId(long id) {
        Student student = getStudentById(id);
        if (student == null || student.getEnrollment() == null) {
            return new ArrayList<>();
        }

        List<String> listOfCodes = new ArrayList<>();
        for (int i = 0; i < student.getEnrollment().size(); i++) {
            Enrollment enrollment = student.getEnrollment().get(i);
            if (enrollment != null && enrollment.getCourse() != null) {
                listOfCodes.add(enrollment.getCourse().getCode());
            }
        }
        return listOfCodes;
    }
}
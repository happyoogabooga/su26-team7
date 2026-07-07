package com.example.ScheduleSidekick.service;

import java.util.List;


import com.example.ScheduleSidekick.repository.StudentRepository;
import com.example.ScheduleSidekick.entity.Student;

import org.springframework.stereotype.Service;

@Service
public class StudentService{
    private final StudentRepository studentRepository;

    public StudentService(StudentRepository studentRepository){
        this.studentRepository = studentRepository;
    }
    //get
    public Student getStudentById(long id){
        return studentRepository.findById(id).orElse(null);
    }
    //do this later
    //public Student getStudentEnrollments(Student student){
    //    return getStudentEnrollments(id);
    //}
    //post
    public Student createAccount(Student student){
        return studentRepository.save(student);
    }
    // Put start
    public Student updateStudent(long id, Student updatedStudent){
        Student currentStudent = studentRepository.findById(id).orElse(null);
        if(currentStudent != null){
            currentStudent.setName(updatedStudent.getName());
            currentStudent.setEmail(updatedStudent.getName());
            currentStudent.setPassword(updatedStudent.getPassword());
            currentStudent.setClassYear(updatedStudent.getClassYear());
            currentStudent.setEnrolledHours(updatedStudent.getEnrolledHours());
            return studentRepository.save(currentStudent);
        }
        return null;
    }
    public Student updatePassword(long id ,String password){
        Student currentStudent = studentRepository.findById(id).orElse(null);
        if(currentStudent != null){
            currentStudent.setPassword(password);
            return studentRepository.save(currentStudent);
        }
        return null;
    }
    public Student updatePersonalInfo(long id, Student student){
        Student currentStudent = studentRepository.findById(id).orElse(null);
        if(currentStudent != null){
            currentStudent.setEmail(student.getEmail());
            currentStudent.setPassword(student.getPassword());
            currentStudent.setName(student.getName());
            return studentRepository.save(currentStudent);
        }
        return null;
    }
    public boolean deleteAccount(long id){
        if(studentRepository.existsById(id)){
            studentRepository.deleteById(id);
            return true;
        }
        return false;
    }
    //put ends
}

package com.example.ScheduleSidekick.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.ScheduleSidekick.entity.Teacher;
import com.example.ScheduleSidekick.repository.TeacherRepository;

@Service
public class TeacherService {
    private final TeacherRepository teacherRepository;

    public TeacherService(TeacherRepository teacherRepository) {
        this.teacherRepository = teacherRepository;
    }

    public List<Teacher> getAllTeachers() {
        return teacherRepository.findAll();
    }

    public Teacher getTeacherById(long id) {
        return teacherRepository.findById(id).orElse(null);
    }

    public Teacher createTeacher(Teacher teacher) {
        return teacherRepository.save(teacher);
    }

    public Teacher updateTeacher(long id, Teacher updatedTeacher) {
        Teacher existingTeacher = teacherRepository.findById(id).orElse(null);
        if (existingTeacher != null) {
            existingTeacher.setName(updatedTeacher.getName());
            existingTeacher.setPassword(updatedTeacher.getPassword());
            existingTeacher.setDepartment(updatedTeacher.getDepartment());
            existingTeacher.setBio(updatedTeacher.getBio());
            return teacherRepository.save(existingTeacher);
        }
        return null;
    }

    public boolean deleteTeacher(long id) {
        if (teacherRepository.existsById(id)) {
            teacherRepository.deleteById(id);
            return true;
        }
        return false;
    }

    public List<Teacher> searchTeacher(String keyword) {
        return teacherRepository.findByNameContainingIgnoreCaseOrBioContainingIgnoreCase(keyword, keyword);
    }

    public Teacher findByEmail(String email) {
        return teacherRepository.findByEmail(email);
    }

}

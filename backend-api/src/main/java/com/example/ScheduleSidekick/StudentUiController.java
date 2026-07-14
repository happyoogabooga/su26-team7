package com.example.ScheduleSidekick;

import java.util.Collections;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.ScheduleSidekick.entity.Course;
import com.example.ScheduleSidekick.entity.Student;
import com.example.ScheduleSidekick.service.CourseService;
import com.example.ScheduleSidekick.service.StudentService;
import com.example.ScheduleSidekick.service.EnrollmentService;

@Controller
public class StudentUiController {
    final private StudentService studentService;
    final private CourseService courseService;
    StudentUiController(StudentService studentService, CourseService courseService){
        this.studentService = studentService;
        this.courseService = courseService;
    }

    @GetMapping("/schedule/{id}")
    public String schedule(@PathVariable long id, Model model){
        Student student = studentService.getStudentById(id);
        model.addAttribute("student", student);
        return "student/schedule";
    }

    @GetMapping("/course_catalog")
    public String course_catalog(@RequestParam(name = "subject", required = false, defaultValue = "None") String subject, 
            Model model) {
        
        List<Course> courses = Collections.emptyList();
        
        // Only show courses when a specific subject is selected
        if (subject != null && !subject.equals("None") && !subject.isEmpty()) {
            courses = courseService.getCourseByCode(subject);
        }
        
        model.addAttribute("courseList", courses); // Passes courses to the template
        model.addAttribute("selectedSubject", subject); // Keeps track of what was selected
        
        return "student/course_catalog";
    }

    @GetMapping("/login")
    public String login(){
        return "student/login";
    }

    @GetMapping("/editInformation/{id}")
    public String editInformation(@PathVariable long id, Model model){
        Student student = studentService.getStudentById(id);
        model.addAttribute("student", student);
        model.addAttribute("title", "Update Student:" + id);
        return "student/edit_personal_information";
    }

    @GetMapping("/Student_login")
    public String Student_login(Model model){
        model.addAttribute("Student", new Student());
        return "student/Student_login";
    }

    @GetMapping("/profile/{id}")
    public String profile(@PathVariable long id,Model model){
        Student student = studentService.getStudentById(id);
        model.addAttribute("student", student);
        return "student/profile";
    }

    @PostMapping("/save")
    public String createStudent(Student student){
        Student createdStudent = studentService.createAccount(student);
        return "student/schedule/" + createdStudent.getId();
    }

    @PostMapping("/loginAccount")
    public String loginStudent(String email, String password){
        Student createdStudent = studentService.getStudentByEmailandPassword(email, password);
        if(createdStudent != null){
            return "/student/schedule/" + createdStudent.getId();
        }
        return "student/login";
    }

    @PostMapping("/editInformation/{id}")
    public String editInformation(@PathVariable long id,@RequestParam("email") String email,@RequestParam("password") String password ,@RequestParam("name") String name){
        Student student = studentService.updatePersonalInfo(id, email, password, name);
        return "redirect:/profile/" + id;
    }
}
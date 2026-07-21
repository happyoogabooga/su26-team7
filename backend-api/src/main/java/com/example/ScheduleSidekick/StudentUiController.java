package com.example.ScheduleSidekick;

import java.util.Collections;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.ScheduleSidekick.entity.Course;
import com.example.ScheduleSidekick.entity.Student;
import com.example.ScheduleSidekick.entity.Enrollment;
import com.example.ScheduleSidekick.entity.Question;

import com.example.ScheduleSidekick.service.CourseService;
import com.example.ScheduleSidekick.service.StudentService;
import com.example.ScheduleSidekick.service.EnrollmentService;
import com.example.ScheduleSidekick.service.QuestionService;

@Controller
@RequestMapping("/student")
public class StudentUiController {
    final private StudentService studentService;
    final private CourseService courseService;
    final private EnrollmentService enrollmentService;
    final private QuestionService questionService;

    StudentUiController(StudentService studentService, CourseService courseService, EnrollmentService enrollmentService, QuestionService questionService){
        this.studentService = studentService;
        this.courseService = courseService;
        this.enrollmentService = enrollmentService;
        this.questionService = questionService;
    }

    @GetMapping("/schedule/{id}")
    public String schedule(@PathVariable long id, Model model){
        Student student = studentService.getStudentById(id);
        List<Enrollment> enrollments = enrollmentService.getEnrollmentsByStudentId(id);

        model.addAttribute("enrollments", enrollments);
        model.addAttribute("student", student);
        return "student/schedule";
    }
    
    @GetMapping("/deleteEnrollment/{studentid}/{enrollmentid}")
    public String deleteEnrollment(@PathVariable long studentid, @PathVariable long enrollmentid){
        boolean isdeleted = enrollmentService.deleteEnrollment(enrollmentid);
        return "redirect:/student/schedule/" + studentid;
    }

    @GetMapping("/course_catalog/{id}")
    public String course_catalog(@RequestParam(name = "subject", required = false, defaultValue = "None") String subject, 
            @PathVariable long id, Model model) {
        Student student = studentService.getStudentById(id);
        List<Course> courses = Collections.emptyList();
    
        // Only show courses when a specific subject is selected
        if (subject != null && !subject.equals("None") && !subject.isEmpty()) {
            courses = courseService.getCourseByCode(subject);
        }
        
        model.addAttribute("courseList", courses); 
        model.addAttribute("selectedSubject", subject);
        model.addAttribute("student", student);
        return "student/course_catalog";
    }

    @GetMapping("/login")
    public String login(){
        return "student/login";
    }

    @PostMapping("/loginAccount")
    public String loginStudent(@RequestParam("email") String email, @RequestParam("password") String password){
        Student createdStudent = studentService.getStudentByEmailandPassword(email, password);
        if(createdStudent != null){
            return "redirect:/student/schedule/" + createdStudent.getId();
        }
        return "student/login";
    }

    @GetMapping("/profile/{id}")
    public String profile(@PathVariable long id,Model model){
        Student student = studentService.getStudentById(id);
        model.addAttribute("student", student);
        return "student/profile";
    }

    @GetMapping("/editInformation/{id}")
    public String editInformation(@PathVariable long id, Model model){
        Student student = studentService.getStudentById(id);
        model.addAttribute("student", student);
        model.addAttribute("title", "Update Student:" + id);
        return "student/edit_personal_information";
    }
    
    @PostMapping("/editInformation/{id}")
    public String editInformation(@PathVariable long id, @RequestParam("email") String email, @RequestParam("password") String password , @RequestParam("name") String name){
        Student student = studentService.updatePersonalInfo(id, email, password, name);
        return "redirect:/student/profile/" + id;
    }

    @GetMapping("/signup")
    public String signup(Model model){
        model.addAttribute("Student", new Student());
        return "student/signup";
    }
    
    @PostMapping("/save")
    public String createStudent(Student student){
        Student createdStudent = studentService.createAccount(student);
        return "redirect:/student/schedule/" + createdStudent.getId();
    }
    
    @GetMapping("/class_details/{studentid}/{courseid}")
    public String classDetails(@PathVariable long studentid, @PathVariable long courseid,Model model) {
        Student student = studentService.getStudentById(studentid);
        Course course = courseService.getCourseByid(courseid);
        List<Question> question = questionService.searchQuestionsByCourseId(courseid);
        
        model.addAttribute("questions", question);
        model.addAttribute("course", course);
        model.addAttribute("student", student);

        return "student/class_details";
    }
    
    @PostMapping("/question")
    public String askQuestion(@RequestParam("courseid") long courseId, @RequestParam("studentid") long studentId, @RequestParam("text") String text){
        Course questionCourse = courseService.getCourseByid(courseId);
        Question newQuestion = new Question(text, questionCourse);
        
        questionService.createQuestion(newQuestion);
        return "redirect:/student/class_details/" + studentId + "/" + courseId;
    }

    @PostMapping("/enrollment/add/{studentid}/{courseid}")
    public String addEnrollment(@PathVariable long studentid, @PathVariable long courseid){
        Enrollment enrollment = enrollmentService.createEnrollmentByIds(studentid, courseid);

        return "redirect:/student/schedule/" + studentid;
    }
}
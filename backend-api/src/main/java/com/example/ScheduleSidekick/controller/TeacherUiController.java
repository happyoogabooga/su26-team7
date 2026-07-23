package com.example.ScheduleSidekick.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.ScheduleSidekick.entity.Course;
import com.example.ScheduleSidekick.entity.Enrollment;
import com.example.ScheduleSidekick.entity.Question;
import com.example.ScheduleSidekick.entity.Teacher;
import com.example.ScheduleSidekick.service.CourseService;
import com.example.ScheduleSidekick.service.EnrollmentService;
import com.example.ScheduleSidekick.service.QuestionService;
import com.example.ScheduleSidekick.service.TeacherService;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/teacher")
public class TeacherUiController {

    private final TeacherService teacherService;
    private final CourseService courseService;
    private final EnrollmentService enrollmentService;
    private final QuestionService questionService;

    public TeacherUiController(TeacherService teacherService, CourseService courseService,
            EnrollmentService enrollmentService, QuestionService questionService) {
        this.teacherService = teacherService;
        this.courseService = courseService;
        this.enrollmentService = enrollmentService;
        this.questionService = questionService;
    }

    @GetMapping("/home")
    public String index() {
        return "index";
    }

    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @PostMapping("/login")
    public String login(HttpSession session, String email, String password) {
        Teacher teacher = teacherService.findByEmail(email);
        if (teacher != null && password.equals(teacher.getPassword())) {
            session.setAttribute("teacherId", teacher.getId());
            return "redirect:/teacher/dashboard";
        }
        return "redirect:/teacher/login";
    }

    @GetMapping("/profile/{id}")
    public String getTeacherById(@PathVariable long id, Model model) {
        List<Course> courses = courseService.getCourseByTeacherId(id);
        Teacher teacher = teacherService.getTeacherById(id);
        model.addAttribute("teacher", teacher);
        model.addAttribute("courseList", courses);
        return "teacher/teacher-dashboard";
    }

    // @GetMapping()
    // public String getAllTeachers(Model model) {
    // // return ResponseEntity.ok(postService.getAllPosts());
    // model.addAttribute("teachersList", teacherService.getAllTeachers());
    // model.addAttribute("pageTitle", "All Teachers");
    // return "index";// view name (post-list.ftlh)
    // }

    @GetMapping("/new-teacher")
    public String createTeacher(Model model) {
        model.addAttribute("teacher", new Teacher());
        model.addAttribute("pageTitle", "Create New Teacher");
        return "teacher/create-teacher";
    }

    @PostMapping("/save")
    public String createTeacher(Teacher teacher) {
        Teacher createdTeacher = teacherService.createTeacher(teacher);
        if (createdTeacher != null) {
            return "redirect:/teacher/profile/" + createdTeacher.getId();
        }
        return "redirect:/teacher/new?error=true";
    }

    @GetMapping("/delete/{id}")
    public String deleteTeacher(@PathVariable Long id) {
        boolean isDeleted = teacherService.deleteTeacher(id);
        if (isDeleted) {
            return "redirect:/teacher";
        }
        return "redirect:/teacher/profile/" + id + "?error=true";
    }

    @GetMapping("/update/{id}")
    public String updateTeacher(@PathVariable long id, Model model) {
        Teacher teacher = teacherService.getTeacherById(id);
        model.addAttribute("teacher", teacher);
        model.addAttribute("pageTitle", "Update Teacher");
        return "teacher/update-teacher";
    }

    @PostMapping("/update/{id}")
    public String updateTeacher(@PathVariable Long id, Teacher updatedTeacher) {
        Teacher teacher = teacherService.updateTeacher(id, updatedTeacher);
        if (teacher != null) {
            return "redirect:/teacher/profile/" + teacher.getId();
        }
        return "redirect:/teacher/profile/" + id + "?error=true";
    }

    @GetMapping("/search")
    public String searchTeachers(String query, Model model) {
        model.addAttribute("teachersList", teacherService.searchTeacher(query));
        model.addAttribute("pageTitle", "Search Results for: " + query);
        return "index";
    }

    @GetMapping("/roster/{courseid}")
    public String roster(@PathVariable long courseid, Model model) {
        Course course = courseService.getCourseByid(courseid);
        List<Enrollment> enrollments = enrollmentService.getEnrollmentByCourseId(courseid);
        List<Question> questions = questionService.searchQuestionsByCourseId(courseid);
        model.addAttribute("course", course);
        model.addAttribute("enrollmentList", enrollments);
        model.addAttribute("questionList", questions);
        return "teacher/view-roster";
    }

    @GetMapping("/{teacherid}/new-course")
    public String createCourse(@PathVariable long teacherid, Model model) {
        Teacher teacher = teacherService.getTeacherById(teacherid);
        model.addAttribute("course", new Course());
        model.addAttribute("pageTitle", "Create New Course");
        model.addAttribute("teacher", teacher);
        return "teacher/create-course";
    }

    @PostMapping("/save-course")
    public String createCourse(Course course, @RequestParam("teacherid") long teacherid) {
        Teacher teacher = teacherService.getTeacherById(teacherid);
        course.setTeacher(teacher);
        Course createdCourse = courseService.createCourse(course);
        if (createdCourse != null) {
            return "redirect:/teacher/profile/" + createdCourse.getTeacher().getId();
        }
        return "redirect:/teacher/new?error=true";
    }

    @PostMapping("/question/{id}/reply")
    public String answerQuestion(@PathVariable long id, Question updatedQuestion,
            @RequestParam("courseid") long courseid) {
        Question question = questionService.updateQuestion(id, updatedQuestion);
        if (question != null) {
            return "redirect:/teacher/roster/" + courseid;
        }
        return "redirect:/teacher/view-roster" + "?error=true";
    }

}

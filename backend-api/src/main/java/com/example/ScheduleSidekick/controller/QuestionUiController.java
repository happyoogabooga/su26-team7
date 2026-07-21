package com.example.ScheduleSidekick.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.ScheduleSidekick.entity.Question;
import com.example.ScheduleSidekick.service.QuestionService;

@Controller
@RequestMapping("/question")
public class QuestionUiController {

    private final QuestionService questionService;

    public QuestionUiController(QuestionService questionService) {
        this.questionService = questionService;
    }

    @GetMapping("/questions/{id}")
    public String getQuestionById(@PathVariable long id, Model model) {
        Question question = questionService.getQuestionById(id);
        model.addAttribute("question", question);
        return "details";
    }

    @GetMapping("/new-question-form")
    public String createQuestionForm(Model model) {
        model.addAttribute("question", new Question());
        model.addAttribute("pageTitle", "Create New Question");
        return "new-question-form";
    }

    @PostMapping("/save")
    public String createQuestion(Question question) {
        Question createdQuestion = questionService.createQuestion(question);
        if (createdQuestion != null) {
            return "redirect:/posts/" + createdQuestion.getId();
        }
        return "redirect:/posts/new?error=true";
    }

    @GetMapping("/delete/{id}")
    public String deleteQuestion(@PathVariable Long id) {
        boolean isDeleted = questionService.deleteQuestion(id);
        if (isDeleted) {
            return "redirect:/questions";
        }
        return "redirect:/questions/" + id + "?error=true";
    }

    @PostMapping("/update/{id}")
    public String updateQuestion(@PathVariable Long id, Question updatedQuestion) {
        Question question = questionService.updateQuestion(id, updatedQuestion);
        if (question != null) {
            return "redirect:/questions/" + question.getId();
        }
        return "redirect:/questions/" + id + "?error=true";
    }

}

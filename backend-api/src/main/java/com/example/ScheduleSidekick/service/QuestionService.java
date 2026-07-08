package com.example.ScheduleSidekick.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.ScheduleSidekick.entity.Question;
import com.example.ScheduleSidekick.repository.QuestionRepository;

@Service
public class QuestionService {
    private final QuestionRepository questionRepository;

    public QuestionService(QuestionRepository questionRepository) {
        this.questionRepository = questionRepository;
    }

    public Question getQuestionById(long id) {
        return questionRepository.findById(id).orElse(null);
    }

    public Question createQuestion(Question question) {
        return questionRepository.save(question);
    }

    public List<Question> searchQuestionsByCourseId(long id) {
        return questionRepository.findByCourseId(id);
    }

    public Question updateQuestion(long id, Question updatedQuestion) {
        Question existingQuestion = questionRepository.findById(id).orElse(null);
        if (existingQuestion != null) {
            existingQuestion.setText(updatedQuestion.getText());
            existingQuestion.setAnswer(updatedQuestion.getAnswer());
            return questionRepository.save(existingQuestion);
        }
        return null;
    }

    public boolean deleteQuestion(long id) {
        if (questionRepository.existsById(id)) {
            questionRepository.deleteById(id);
            return true;
        }
        return false;
    }
}

package com.example.ScheduleSidekick.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.ScheduleSidekick.entity.Question;

@Repository
public interface QuestionRepository extends JpaRepository<Question, Long> {

    List<Question> findByTextContainingIgnoreCaseOrAnswerContainingIgnoreCase(String textKeyword, String answerKeyword);

    List<Question> findByCourseId(long id);
}
package com.java.interview.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.interview.model.Question;
import com.java.interview.repository.QuestionRepository;

@Service
public class QuestionService {
	
	@Autowired
	private QuestionRepository qtnRepo;
	
	public void saveQuestion(Question qtn) {
		qtnRepo.save(qtn);
	}
	
	public List<Question> findAllQuestions() {
		List<Question> all = qtnRepo.findAll();
		if (all.size() > 0) {
			return all;
		}else {
			return null;
		}
	}

}

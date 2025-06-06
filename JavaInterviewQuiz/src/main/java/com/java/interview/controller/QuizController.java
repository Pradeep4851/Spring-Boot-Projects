package com.java.interview.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.java.interview.model.Question;
import com.java.interview.service.QuestionService;

@Controller
public class QuizController {
	@Autowired
	private QuestionService qtnServ;
	
	/**
	 * Method will display index.jsp page when the application starts
	 * When user hits this URL: http://localhost:8080/
	 * @return
	 */
	@GetMapping(path = {"/", "/index"})
	public String dispplayIndexPage() {
        return "index";
    }
	
	/**
	 * Method for showing the Quiz Questions
	 * Collecting Questions from the database and send it back to the playquiz page
	 * @param model
	 * @return
	 */
	@PostMapping("/playquiz")
    public String startQuiz(Model model) {
		List<Question> allQuestions = qtnServ.findAllQuestions();
		model.addAttribute("questions", allQuestions);
        return "playquiz";
    }
	
	/**
	 * Method for displaying the Quiz Results
	 * @param allParams
	 * @param model
	 * @return
	 */
	@PostMapping("/submit")
	public String submitQuiz(@RequestParam Map<String, String> allParams, Model model) {
		int total = Integer.parseInt(allParams.get("total"));
	    int score = 0;
	    for (int i = 1; i <= total; i++) {
	        String selected = allParams.get("answer" + i);
	        String correct = allParams.get("correct" + i);
	        if (selected != null && selected.charAt(0) == correct.charAt(0)) {
	            score++;
	        }
	    }
	    model.addAttribute("score", score);
	    model.addAttribute("total", total);
	    return "result";
	}
	
	/**
	 * Method for displyig the "addquestion.jsp" jsp
	 * Collects the data from the end-user
	 * @param model
	 * @return
	 */
	@GetMapping("/addquestion")
	public String showAddQuestionPage(Model model) {
		model.addAttribute("newquestion", new Question());
		return "addquestion";
	}
	
	/**
	 * Method to find the questions count
	 * @return
	 */
	private int getQuestionNumber() {
		return qtnServ.findAllQuestions().size();
	}
	/**
	 * Method for collecting the Questions from the user
	 * Save the Question in the connected database
	 * If user doesn't sent any data will display an error page with proper error message
	 * @param model
	 * @return
	 */
	@PostMapping("/savequestion")
	public String saveQuestion(@ModelAttribute("newquestion") Question qtn, Model model) {
		if(qtn == null)
			throw new NullPointerException("Can't add null type Questions, please provide a valid Question");
		qtn.setQtnId(getQuestionNumber() + 1);
		qtn.setActualAnswer(Character.toUpperCase(qtn.getActualAnswer()));
		qtnServ.saveQuestion(qtn);
		
		model.addAttribute("more", true);
	    return "addquestion";
	}	

	/**
	 * Method for saying Greetings
	 * Redirect to the /greetings page
	 * @return
	 */
    @GetMapping("/greetings")
    public String sayGreetings() {
        return "greetings";
    }
}
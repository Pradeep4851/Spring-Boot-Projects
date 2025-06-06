package com.java.interview.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "interview_questions")
@NoArgsConstructor
public class Question {
	@Id
	private int qtnId;
	private String question;
	private String opt1;
	private String opt2;
	private String opt3;
	private String opt4;
	private char actualAnswer;

	public Question(int qtnId, String question, String opt1, String opt2, String opt3, String opt4,
			char actualAnswer) {
		this.qtnId = qtnId;
		this.question = question;
		this.opt1 = opt1;
		this.opt2 = opt2;
		this.opt3 = opt3;
		this.opt4 = opt4;
		this.actualAnswer = actualAnswer;
	}

	/**
	 * @return the qtnId
	 */
	public int getQtnId() {
		return qtnId;
	}

	/**
	 * @param qtnId the qtnId to set
	 */
	public void setQtnId(int qtnId) {
		this.qtnId = qtnId;
	}

	/**
	 * @return the question
	 */
	public String getQuestion() {
		return question;
	}

	/**
	 * @param question the question to set
	 */
	public void setQuestion(String question) {
		this.question = question;
	}

	/**
	 * @return the opt1
	 */
	public String getOpt1() {
		return opt1;
	}

	/**
	 * @param opt1 the opt1 to set
	 */
	public void setOpt1(String opt1) {
		this.opt1 = opt1;
	}

	/**
	 * @return the opt2
	 */
	public String getOpt2() {
		return opt2;
	}

	/**
	 * @param opt2 the opt2 to set
	 */
	public void setOpt2(String opt2) {
		this.opt2 = opt2;
	}

	/**
	 * @return the opt3
	 */
	public String getOpt3() {
		return opt3;
	}

	/**
	 * @param opt3 the opt3 to set
	 */
	public void setOpt3(String opt3) {
		this.opt3 = opt3;
	}

	/**
	 * @return the opt4
	 */
	public String getOpt4() {
		return opt4;
	}

	/**
	 * @param opt4 the opt4 to set
	 */
	public void setOpt4(String opt4) {
		this.opt4 = opt4;
	}

	/**
	 * @return the actualAnswer
	 */
	public char getActualAnswer() {
		return actualAnswer;
	}

	/**
	 * @param actualAnswer the actualAnswer to set
	 */
	public void setActualAnswer(char actualAnswer) {
		this.actualAnswer = actualAnswer;
	}

	@Override
	public String toString() {
		return "Question [qtnId = " + qtnId + ", question = " + question + ", opt1 = " + opt1 + ", opt2 = " + opt2
				+ ", opt3 = " + opt3 + ", opt4 = " + opt4 + ", actualAnswer = " + actualAnswer + "]";
	}

}
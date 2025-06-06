<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
	<title>Quiz Question</title>
	<style type="text/css">
		body {
			font-family: sans-serif;
			height: 100vh;
			padding: 0;
			margin: 0;
			box-sizing: border-box;
			display: flex;
			justify-content: center;
			align-items: center;
			flex-direction: column;
		}
		.container {
			border: 2px solid #fffefa;
			box-shadow: rgba(0, 0, 0, 0.2) 0px 12px 28px 0px, 
						rgba(0, 0, 0, 0.1) 0px 2px 4px 0px, 
						rgba(255, 255, 255, 0.05) 0px 0px 0px 1px inset;
			padding: 20px;
			border-radius: 20px;
		}
		h2 {
			text-align: center;
		}
		form {
			text-align: left;
			display: flex;
			flex-direction: column;
		}
		
		label {
	 		margin: 10px 0;
	 	}
	 	
	 	label input {
	 		margin-left: 10px;
	 		outline: none;
	 		border-top: none;
	 		border-right: none;
	 		border-bottom: 2px solid #ccc;
	 		border-left: none;
	 		width: 400px;
	 		padding: 10px;
	 		border-radius: 5px;
	 	}
	 	
	 	label input:focus {
	 		border-top: none;
	 		border-right: none;
	 		border-bottom: 2px solid #555;
	 		border-left: none;
		}
		
		.answer input {
			width: 200px;
			padding: 10px;
		}
		
		.buttons {
			margin-top: 10px;
			display: flex;
			justify-content: space-between; 
		}
		
		button {
			cursor: pointer;
			padding: 15px 20px;
			border: none;
			outline: none;
			border-radius: 10px;
			box-shadow: rgba(0, 0, 0, 0.5) 0px 14px 28px,
						rgba(0, 0, 0, 0.22) 0px 10px 10px;						
			color: #ffffff;
			font-size: 18px;
		}
		.save {
			background-color: green;
		}
		.home a {
			color: #ffffff;
			text-decoration: none;
		}
		.home {
			background-color: red;
		}
	</style>
</head>
<body>
	<div class="container">
		<h2>Add New Java Quiz Question</h2>
		
		<form:form action="/savequestion" method="post" modelAttribute="newquestion">
			<label class="question">Question: <form:input path="question" required="true"/> </label>
	
	        <label>Option A: <form:input path="opt1" required="true"/> </label>
	
	        <label>Option B: <form:input path="opt2" required="true"/> </label>
	
	        <label>Option C: <form:input path="opt3" required="true"/> </label>
	
	        <label>Option D: <form:input path="opt4" required="true"/> </label>
	
	        <label class="answer">Correct Answer (A/B/C/D): <form:input path="actualAnswer" required="true" maxlength="1"/> </label>
			
			<div class="buttons">
				<button class="save" type="submit">Save Question</button>
				<button class="home"><a href="/">Back to Home</a></button>
			</div>
		</form:form>
		
		<c:if test="${more}">
			<form action="/addquestion" method="get">
	            <p>Do you want to add another question?</p>
	            <button type="submit">Yes</button>
	        </form>
	
	        <form action="/greetings" method="get">
	            <button type="submit">No, Finish</button>
	        </form>
		</c:if>
		
	</div>
</body>
</html>
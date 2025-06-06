<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>Quiz Results</title>
	<style type="text/css">
		body {
			padding: 0;
			margin: 0;
			box-sizing: border-box;
			font-family: sans-serif;
			height: 100vh;

			display: flex;
			justify-content: center;
			align-items: center;
			flex-direction: column;
		}
		
		.container {
			border: border: 2px solid #fffefa;
			box-shadow: rgba(0, 0, 0, 0.2) 0px 12px 28px 0px, 
						rgba(0, 0, 0, 0.1) 0px 2px 4px 0px, 
						rgba(255, 255, 255, 0.05) 0px 0px 0px 1px inset;
			padding: 40px;
			border-radius: 20px;
			text-align: center;
		}
		
		p {
			font-size: 20px;
		}
		
		a {
			text-decoration: none;
			color: #ffffff;
		}
		
		.add {
			background-color: green;
			margin-right: 50px;
		}
		
		.end {
			background-color: red;
			margin-left: 50px;
		}
		
		button {
			box-shadow: rgba(0, 0, 0, 0.25) 0px 5px 15px 0px;
			font-size: 20px;
			border-radius: 5px;
			color: olive;
			padding: 10px 15px;
			border: none;
			outline: none;
			cursor: pointer;
		}
	</style>

</head>
<body>
	<div class="container">
		<h2>🎉 Quiz Completed!</h2>
    	<p>Your score: ${score} out of ${total}</p>
    
    	<p>Do you want to add any Questions which will help to others</p>
    	<button class="add"><a href="/addquestion">Add Question</a></button>
    	<button class="end"><a href="/greetings">End Quiz</a></button>
    </div>

</body>
</html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Java Quiz</title>
    
    <style type="text/css">
    	* {
			padding: 0;
			margin: 0;
			box-sizing: border-box;
			font-family: sans-serif;
    	}
    	
    	body {
			display: flex;
			flex-direction: column;
			gap: 30px;
			padding: 50px;
		}
		
		.quiz-container {
			background-color: #e5e7e9;
            border: 2px solid #ffffff;
            padding: 20px;
            border-radius: 20px;
		}
		
		h2 {
			margin: 20px 0;
			text-align: center;
			color: #633974;
		}
		
		p {
			font-size: 20px;
			margin: 10px 0;
		}
		
		label {
			font-size: 20px;
			padding-left: 50px;
			display: block;
		}
		
		label input {
			margin-bottom: 10px;
		}
		
		button {
			/* position: absolute;
			right: 30px;
			top: 30px; */
			padding: 15px 20px;
			font-size: 16px;
			background-color: #19b363;
			color: #ffffff;
			border-radius: 10px;
			margin-bottom: 20px;
			border: none;
			outline: none;
			cursor: pointer;
		}		
    </style>
    <script type="text/javascript">
    	function checkAnswers() {
    		alert("Check answers before submitting...")
    	}
    </script>
</head>
<body>
	<div class="quiz-container">
		<h2>📝 Java Interview Questions Quiz</h2>
		<form action="/submit" method="post" onsubmit="return validateQuiz()">
			<c:forEach var="q" items="${questions}" varStatus="status">
		    	<div class="question-block" style="margin-bottom: 20px;">
		        	<p><b>Q${q.qtnId}:</b> ${q.question}</p>
		            <label><input type="radio" name="answer${q.qtnId}" value="A"/> A. ${q.opt1}</label> 
		            <label><input type="radio" name="answer${q.qtnId}" value="B"/> B. ${q.opt2}</label> 
		            <label><input type="radio" name="answer${q.qtnId}" value="C"/> C. ${q.opt3}</label> 
		            <label><input type="radio" name="answer${q.qtnId}" value="D"/> D. ${q.opt4}</label>
		            <input type="hidden" name="correct${q.qtnId}" value="${q.actualAnswer}" />
		        </div>
			</c:forEach>
		    <input type="hidden" name="total" value="${questions.size()}" />
		    <button type="submit" onclick="checkAnswers()">Submit Quiz</button>
		</form>
	</div>
</body>
</html>

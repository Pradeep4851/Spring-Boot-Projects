<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>Java Quiz</title>
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
		}
		.container {
			border: 2px solid #fffefa;
			box-shadow: rgba(0, 0, 0, 0.2) 0px 12px 28px 0px, 
						rgba(0, 0, 0, 0.1) 0px 2px 4px 0px, 
						rgba(255, 255, 255, 0.05) 0px 0px 0px 1px inset;
			padding: 40px;
			border-radius: 20px;
			text-align: center;
		}
		p {
			font-size: 16px;
		}
		
		button {
			cursor: pointer;
			box-shadow: rgba(0, 0, 0, 0.25) 0px 14px 28px,
						rgba(0, 0, 0, 0.22) 0px 10px 10px;
			font-size: 20px;
			border-radius: 5px;
			width: 75px;
			color: olive;
			padding: 10px;
			border: none;
			outline: none; 
		}
}
		
	</style>
</head>
<body>
	<div class="container">
	    <h2>Welcome to Java Interview Questions Quiz!</h2>
	    <form action="playquiz" method="post">
	    	<p>Do you want to practice Java Interview Questions Quiz?</p>
	        <button type="submit">Yes</button>
	    </form>
    </div>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Greetings</title>
	<style type="text/css">
		body {
			color: green;
			height: 100vh;
			padding: 0;
			margin: 0;
			box-sizing: border-box;
			display: flex;
			justify-content: center;
			align-items: center;
			font-family: sans-serif;
		}
		div {
			box-shadow: rgba(0, 0, 0, 0.5) 0px 14px 28px,
						rgba(0, 0, 0, 0.22) 0px 10px 10px;
			border: 2px solid #fffefa;
			border-radius: 15px;
			display: flex;
			flex-direction: column;
			padding: 20px;
			width: 300px;
			height: 150px;
			text-align: center;
			font-size: 20px;
			position: relative;
		}
		a {
			text-decoration: none;
		}
		
		button {
			box-shadow: rgba(14, 30, 37, 0.12) 0px 2px 4px 0px, 
						rgba(14, 30, 37, 0.32) 0px 2px 16px 0px;
			font-size: 20px;
			border-radius: 5px;
			width: 100px;
			padding: 10px;
			border: none;
			outline: none;
			position: absolute;
			left: 50%;
			bottom: 10%;
			transform: translate(-50%, -10%); 
		}
	</style>
</head>
<body>
	<div>
		<p>Thank You for participating in Java Interview Quiz</p>
		<button> <a href="/">HOME</a> </button>
		
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<title>Oops! Something went wrong</title>
	
	<style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            padding: 30px;
        }
        .error-container {
            background-color: #ffe6e6;
            border: 2px solid #e74c3c;
            padding: 20px;
            border-radius: 8px;
        }
        .error-title {
            font-size: 24px;
            color: #e74c3c;
        }
        .error-details {
            margin-top: 10px;
        }
        .stacktrace {
            margin-top: 20px;
            padding: 10px;
            background: #fff;
            border: 1px solid #ddd;
            font-family: monospace;
            white-space: pre-wrap;
            overflow-x: auto;
        }
    </style>
</head>
<body>
	<div class="error-container">
		<div class="error-title">⚠️ Something Went Wrong</div>
		<div class="error-details">
	        <p><strong>Message:</strong> ${requestScope['jakarta.servlet.error.message']}</p>
	        <p><strong>Status Code:</strong> ${requestScope['jakarta.servlet.error.status_code']}</p>
	        <p><strong>Request URI:</strong> ${requestScope['jakarta.servlet.error.request_uri']}</p>
	        <p><strong>Exception Type:</strong> ${requestScope['jakarta.servlet.error.exception_type']}</p>
	    </div>

	    <c:if test="${not empty exception}">
	        <div class="stacktrace">
	            <strong>StackTrace:</strong>
	            <c:forEach var="line" items="${exception.stackTrace}">
	                ${line}<br/>
	            </c:forEach>
	        </div>
	    </c:if>
	</div>
</body>
</html>
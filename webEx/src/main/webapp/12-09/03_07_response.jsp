<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Response 내장객체  - 리다이렉트 예제</h2>
	
	<%
		response.sendRedirect("03_07_sendRedirect.jsp");
	%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Log out</title>
</head>
<body>
	<%
	String ses = (String) session.getAttribute("log");

	if (ses != null) {
		session.removeAttribute("log");
	}
	response.sendRedirect("_7_boardList.jsp");
	%>
</body>
</html>
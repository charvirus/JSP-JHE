<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%
String logResult = String.valueOf(session.getAttribute("logResult"));
String ses = (String) session.getAttribute("sID");
%>
<title>메인</title>
</head>
<body>
	<h1>Main</h1>
	<%
	if (ses != null) {
	%>
	<span><%=ses%>님</span>
	<button onclick="location.href = 'logout'">로그아웃</button>
	<%
	} else {
	%>
	<button onclick="location.href='login.jsp'">로그인</button>
	<button onclick="location.href='join.jsp'">회원가입</button>
	<%
	}
	%>
</body>
</html>
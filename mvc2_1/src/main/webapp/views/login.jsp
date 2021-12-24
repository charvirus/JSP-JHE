<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<form method="post" action="service">
		<input type="hidden" name="command" value="login">
		<h1>로그인</h1>
		<span>ID:&#9;</span><input type="text" name="id">
		<span>PW:&#9;</span><input type="text" name="pw">
		<input type="submit" value="가입">
	</form>
</body>
<%
String logResult = String.valueOf(session.getAttribute("logResult"));
String ses = (String) session.getAttribute("sID");

if (logResult.equals("0")) {
%>
<script>
	alert("ID 혹은 비밀번호가 틀립니다.");
</script>
<%
}
%>
</html>
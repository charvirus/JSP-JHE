<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Update & Delete 권한 확인</h1>
	<form method="post" action="_9_checkPassPro.jsp">
		<span>ID:&#9;</span><input type="text" name="id" value=<%=session.getAttribute("log")%>><br><br> 
		<span>PW:&#9;</span><input type="password" name="pw"><br><br> 
		<input type="submit">
	</form>
</body>
</html>
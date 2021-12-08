<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<%
	// 	post는 request.setCharacterEncoding("UTF-8");
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String password = request.getParameter("pw");
	String name = request.getParameter("name");
	String year = request.getParameter("year");
	String month = request.getParameter("month");
	String day = request.getParameter("day");
	String gender = request.getParameter("day");
	String checkAnotherEmail = request.getParameter("checkAnotherEmail");
	String teleFront = request.getParameter("telephoneFront");
	String telephone = request.getParameter("telephone");
	String verifiNumber = request.getParameter("verifiNumber");
	%>
	<span>아이디 : </span><%=id%><br>
	<span>비밀번호 : </span><%=password%><br>
	<span>이름 : </span><%=name%><br>
	<span>생년 : </span><%=year%><br>
	<span>생월 : </span><%=month%><br>
	<span>생일 : </span><%=day%><br>
	<span>성별 : </span><%=gender%><br>
	<span>이메일 : </span><%=checkAnotherEmail%><br>
	<span>국가 : </span><%=teleFront%><br>
	<span>전화번호 : </span><%=telephone%><br>
	<span>인증번호 : </span><%=verifiNumber%><br>
</body>
</html>
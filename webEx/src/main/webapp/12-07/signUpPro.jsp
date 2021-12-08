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
	String birthDate = request.getParameter("date");
	String gender = request.getParameter("gender");
	String checkAnotherEmail = request.getParameter("checkAnotherEmail");
	String teleFront = request.getParameter("telephoneFront");
	String telephone = request.getParameter("telephone");
	String verifiNumber = request.getParameter("verifiNumber");
	
	if(checkAnotherEmail == ""){
		checkAnotherEmail = "없음";
	}
	%>
	<span>아이디 : </span><%=id%><br>
	<span>비밀번호 : </span><%=password%><br>
	<span>이름 : </span><%=name%><br>
	<span>생년월일 : </span><%=birthDate%><br>
	<span>성별 : </span><%=gender%><br>
	<span>이메일 : </span><%=checkAnotherEmail%><br>
	<span>국가번호 : </span><%=teleFront%><br>
	<span>전화번호 : </span><%=telephone%><br>
	<span>인증번호 : </span><%=verifiNumber%><br>
</body>
</html>
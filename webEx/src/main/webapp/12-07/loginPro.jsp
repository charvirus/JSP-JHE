<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	loginPro 페이지입니다.
	<%
	// URI 쿼리 구간에 파라미터명 = 값
	
	// GET
	// http://localhost:8080/webEx/loginPro.jsp?id=asdf&pw=asdf
	
	// POST
	// http://localhost:8080/webEx/loginPro.jsp
	request.setCharacterEncoding("UTF-8");
	
	// jsp의 내장 객체중 , request
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	// 폼 예제
	// gugudan.jsp
	// 2~9단 안에서 랜덤으로 5개문제를 출제
	// 사용자가 문제에 대한 답을 입력(input -> req)

	// gugudanPro.jsp
	// 넘어온 파라미터를 바탕으로
	// 성적표를 출력 (정오표)
	%>
	<br>
	ID : <%=id %><br>
	PW : <%=pw %>
</body>
</html>
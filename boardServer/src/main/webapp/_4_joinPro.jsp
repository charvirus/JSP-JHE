<%@page import="java.util.Calendar"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="user.UserDTO"%>
<%@page import="user.UserDAO"%>
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
	
	// 데이터베이스에 가져온 id, pw  등록
	// 데이터베이스와 소통하기 위한 오브젝트
	// ㄴ DTO (Data Transfer Object) = Bean, VO(Read Only), Entity Class
	
	UserDAO dao = UserDAO.getInstance();
	
	Timestamp regDate = new Timestamp(Calendar.getInstance().getTimeInMillis());
	
	UserDTO newUser = new UserDTO(id,pw);
	if(dao.addUser(newUser) != -1){
		response.sendRedirect("_1_index.jsp");
	}else{
		response.sendRedirect("_3_join.jsp");
	}
	%>
	
</body>
</html>
<%@page import="userlist.UserListDTO"%>
<%@page import="userlist.UserListDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>

</body>
<%
request.setCharacterEncoding("UTF-8");
UserListDAO dao = UserListDAO.getInstance();

String nickName = request.getParameter("nickname");
String id = request.getParameter("id");
String pw = request.getParameter("pw");

UserListDTO newUser = new UserListDTO(id, pw, nickName);
if (dao.addUser(newUser) != -1) {
	response.sendRedirect("_1_main.jsp");
} else {
%>
<script>
	alert("중복된 ID입니다.");
	location.href = "_7_signUp.jsp";
</script>
<%
}
%>
</html>
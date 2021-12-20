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

if (dao.checkLogin(id, pw)) {
	session.setAttribute("log", id);
	response.sendRedirect("_1_main.jsp");
} else {
%>

<script>
	alert("ID나 비밀번호 다릅니다.");
	window.location.href = '_6_login.jsp';
</script>

<%
}
%>
</html>
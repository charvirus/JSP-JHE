<%@page import="userlist.UserListDTO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.mysql.cj.Query"%>
<%@page import="userlist.UserListDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<%
UserListDAO dao = UserListDAO.getInstance();
String ses = (String) session.getAttribute("log");
ArrayList<UserListDTO> boards = dao.getUserByid(ses);
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");

%>
</head>
<body>
	<div id="grid">
		<header id="subheader1"></header>
		<header id="mainheader"><jsp:include page="top.jsp"></jsp:include></header>
		<header id="subheader2"></header>
		<nav></nav>
		<main>
			<section id="content">

			</section>
		</main>
		<aside></aside>
		<footer id="subfooter1"></footer>
		<footer id="mainfooter"><jsp:include page="bottom.jsp"></jsp:include></footer>
		<footer id="subfooter2"></footer>
	</div>
	<script>
		
	</script>
</body>
</html>
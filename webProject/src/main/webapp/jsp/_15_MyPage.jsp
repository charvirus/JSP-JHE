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
ArrayList<UserListDTO> boards = dao.getUserMyPageInfo(ses);
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
			<%if(ses != null){ %>
				<table id="talkTable" border="solid 1px"
					style="border-collapse: collapse;" width="40%">
					<tr>
						<td><center>닉네임</center></td>
						<td><%=boards.get(0).getUser_nickname() %></td>
					</tr>
					<tr>
						<td><center>아이디</center></td>
						<td><%=boards.get(0).getUser_id() %></td>
					</tr>
					<tr>
						<td colspan="2"><button>비밀번호 변경</button></td>
						
					</tr>
					<tr>
						<td><center>작성한 게시글</center></td>
						<td><a><%=boards.get(0).getCnt_talk_title() %></a></td>
					</tr>
					<tr>
						<td><center>영화 찜 목록</center></td>
						<td><a><%=boards.get(0).getCnt_movie_name() %></a></td>
					</tr>
					<tr>
						<td><center>가입일</center></td>
						<td><%=sdf.format(boards.get(0).getUser_regdate()) %></td>
					</tr>
				</table>
				<%}else{ %>
					<span>로그인 해주세요.</span>
				<%} %>
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
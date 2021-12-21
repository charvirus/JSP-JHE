<%@page import="talklist.TalklistDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="talklist.TalklistDAO"%>
<%@page import="com.mysql.cj.Query"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MovieBox - 영화 게시판</title>
<%
TalklistDAO dao = TalklistDAO.getInstance();
ArrayList<TalklistDTO> boards = dao.getTalkList();
String ses = (String) session.getAttribute("log");
%>
</head>
<body>
	<div id="grid">
		<header id="subheader1"></header>
		<header id="mainheader"><jsp:include page="top.jsp"></jsp:include></header>
		<header id="subheader2"></header>
		<nav></nav>
		<main>
			<%
			if (ses != null) {
			%>
			<section>
				<form method="post" action="_10_talkListWritePro.jsp">
					<table>
						<tr>
							<td>제목</td>
							<td><input type="text" id="title" name="title"></td>
						</tr>
						<tr>
							<td>내용</td>
							<td><textarea name="contents" id="contents" rows="15"
									cols="75"></textarea></td>
						</tr>
					</table>
					<input type="submit" value="등록">
				</form>
			</section>
			<%
			} else {
			%>
			<script>
				alert("로그인 해주세요.");
				window.location.href = '_6_login.jsp';
			</script>
			<%
			}
			%>
		</main>
		<aside></aside>
		<footer id="subfooter1"></footer>
		<footer id="mainfooter"><jsp:include page="bottom.jsp"></jsp:include></footer>
		<footer id="subfooter2"></footer>
	</div>

</body>
</html>
<%@page import="talklist.TalklistDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="talklist.TalklistDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%
String ses = (String) session.getAttribute("log");
TalklistDAO dao = TalklistDAO.getInstance();
%>
<title>My Page</title>
</head>
<body>
	<div id="grid">
		<header id="subheader1"></header>
		<header id="mainheader"><jsp:include page="top.jsp"></jsp:include></header>
		<header id="subheader2"></header>
		<nav></nav>
		<main>

			<section>
				<%
				if (ses != null) {
				%>
				<form method="post" action="_14_MyPageCheckPro.jsp">
					<span>비밀번호를 입력해주세요</span>
					<span>PW&#9;<input type="password" name="pw" required></span>
					<input id="submit" type="submit"value="확인">
				</form>
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
			</section>

		</main>
		<aside></aside>
		<footer id="subfooter1"></footer>
		<footer id="mainfooter"><jsp:include page="bottom.jsp"></jsp:include></footer>
		<footer id="subfooter2"></footer>
	</div>
</body>

</html>
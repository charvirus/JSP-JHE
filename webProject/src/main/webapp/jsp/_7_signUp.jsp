<%@page import="com.mysql.cj.Query"%>
<%@page import="userlist.UserListDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MovieBox - 회원가입</title>
</head>
<%
UserListDAO dao = UserListDAO.getInstance();
%>
<body>
	<div id="grid">
		<header id="subheader1"></header>
		<header id="mainheader"><jsp:include page="top.jsp"></jsp:include></header>
		<header id="subheader2"></header>
		<nav></nav>
		<main>
			<section>
				<form method="post" action="service?command=signUpPro">
					<article id="idpws">
						<span>이름&#9;<input type="text" name="name" required></span>
						<span>닉네임&#9;<input type="text" name="nickname" required></span>
						<span>ID&#9;<input type="text" id="id" name="id" required></span>
						<span>PW&#9;<input type="password" name="pw" required></span>
						<input id="submit" type="submit" value="가입">
					</article>
				</form>
			</section>
		</main>
		<aside></aside>
		<footer id="subfooter1"></footer>
		<footer id="mainfooter"><jsp:include page="bottom.jsp"></jsp:include></footer>
		<footer id="subfooter2"></footer>
	</div>
</body>

<%
String signUpResult = String.valueOf(session.getAttribute("signUpResult"));

if (signUpResult.equals("0")) {
%>
<script>
	alert("ID가 중복됩니다.");
</script>
<%
request.getSession().removeAttribute("signUpResult");
}
%>
</html>
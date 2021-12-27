<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<%
String ses = (String) session.getAttribute("log");
%>

<body>
	<main id="headerMain">
		<ul id="headerMenu1">
			<li><a href="service?command=academy">아카데미 작품상</a></li>
			<li><a href="service?command=boxOffice">극장 상영작 영화</a></li>
			<li><a href='service?command=talkList'>영화 게시판</a></li>
			<li><a href="jsp/_14_MyPageCheck.jsp">마이페이지</a></li>
		</ul>
		<ul id="headerMenu2">
			<%
			if (ses != null) {
			%>
			<h3><%=ses%>님
			</h3>
			<button onclick="location.href = '_8_logoutPro.jsp'">로그아웃</button>
			<%
			} else {
			%>
			<li id="headerLogin"><a href="service?command=login">로그인</a></li>
			<li id="headerSignUp"><a href="_7_signUp.jsp">회원가입</a></li>
			<%
			}
			%>
		</ul>
	</main>
</body>
</html>
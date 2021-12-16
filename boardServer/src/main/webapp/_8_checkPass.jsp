<%@page import="board.BoardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%
String ses = (String) session.getAttribute("log");
BoardDAO dao = BoardDAO.getInstance();
ArrayList<BoardDTO> boards = dao.getBoards();
String uid = boards.get(0).getId();
%>
<meta charset="UTF-8">
<title>회원 탈퇴</title>

<link rel="stylesheet" type="text/css" href="_3_join&login.css">
</head>
<body>
	<div id="grid">
		<header id="sub1"></header>
		<header id="mainHeader">
			<%
			if (ses != null) {
			%>
			<h3>
				<%=ses%>님
			</h3>
			<button onclick="location.href = '_10_boardWrite.jsp'">글쓰기</button>
			<button onclick="location.href = '_16_logOutPro.jsp'">로그아웃</button>
			<button onclick="location.href = '_8_checkPass.jsp'">회원 탈퇴</button>
			<%
			} else {
			%>
			<span>로그인 해주세요 </span>
			<button id="login" onclick="location.href = '_5_login.jsp'">로그인</button>
			<%
			}
			%>
		</header>
		<header id="sub2"></header>
		<nav></nav>
		<main>
			<section id="center1">
				<article id="mainHeader">
					<h1 id="h1">Withdrawal</h1>
				</article>
			</section>

			<section id="center2">
				<form method="post" action="_9_checkPassPro.jsp">
					<article id="idpws">
						<span>ID:&#9;</span><input type="text" name="id" value=<%=session.getAttribute("log")%>>
						<span>PW:&#9;</span><input type="password" name="pw">
						<input type="submit">
					</article>
				</form>
			</section>
		</main>
		<aside></aside>
		<footer></footer>
	</div>
</body>
</html>
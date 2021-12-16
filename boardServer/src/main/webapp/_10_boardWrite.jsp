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
<title>글쓰기</title>
<link rel="stylesheet" type="text/css" href="_10_boardWrite.css">
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
			<section id="content">
				<form method="post" action="_11_boardWritePro.jsp">
					<table id="contentTable">
						<tr>
							<td>제목</td>
							<td><input type="text" name="title" id="title"></td>
						</tr>
						<tr>
							<td>내용</td>
							<td><textarea name="contents" id="contents" rows="15"
									cols="75"></textarea></td>
						</tr>
						<tr>
							<td>비밀번호</td>
							<td><input type="password" name="pw" id="pw"></td>
						</tr>
					</table>
					<input type="submit" value="등록">
				</form>
			</section>
		</main>
		<aside></aside>
		<footer></footer>
	</div>
</body>
</html>
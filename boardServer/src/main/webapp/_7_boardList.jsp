<%@page import="board.BoardDTO"%>
<%@page import="board.BoardDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 목록</title>
<link rel="stylesheet" type="text/css" href="_7_boardList.css">
</head>
<body>
	<%
	BoardDAO dao = BoardDAO.getInstance();
	String ses = (String) session.getAttribute("log");
	ArrayList<BoardDTO> boards = dao.getBoards();
	%>
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
			로그인 해주세요
			<button onclick="location.href = '_5_login.jsp'">로그인</button>
			<%
			}
			%>
		</header>
		<header id="sub2"></header>
		<nav></nav>
		<main>
			<section id="content">
				<table id="listTable" border="solid 1px"
					style="border-collapse: collapse;" width="100%">
					<tr id="rowHead">
						<td>no</td>
						<td>title</td>
						<td>id</td>
						<td>like</td>
						<td>regdate</td>
					</tr>
					<%
					for (int i = 0; i < boards.size(); i++) {
					%>
					<tr>
						<td><%=boards.get(i).getNo()%></td>
						<td><a href="_12_boardView.jsp?no=<%=boards.get(i).getNo()%>"><%=boards.get(i).getTitle()%></a></td>
						<td><%=boards.get(i).getId()%></td>
						<td><%=boards.get(i).getLikes()%></td>
						<td><%=boards.get(i).getRegDate()%></td>
					</tr>
					<%
					}
					%>
				</table>
			</section>

		</main>
		<aside></aside>
		<footer></footer>
	</div>
</body>
</html>
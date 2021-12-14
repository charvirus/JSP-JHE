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
</head>
<body>
	<%
	BoardDAO dao = BoardDAO.getInstance();
	String ses = (String) session.getAttribute("log");
	ArrayList<BoardDTO> boards = dao.getBoards();
	%>

	<button onclick="location.href = '_8_checkPass.jsp'">회원 탈퇴</button>
	<button onclick="location.href = '_10_boardWrite.jsp'">글쓰기</button>
	<%
	if (ses != null) {
	%>
	<button onclick="location.href = '_16_logOutPro.jsp'">로그아웃</button>
	<%
	} else {
	%>
	<button onclick="location.href = '_5_login.jsp'">로그인</button>
	<%
	}
	%>

	<h1>LIST</h1>
	<h3>
		<%
		if (ses != null) {
		%>
		USER :
		<%=ses%>
		<%
		} else {
		%>
		로그인 해주세요
		<%
		}
		%>
	</h3>
	<div class="wrap">
		<table border="solid 1px" style="border-collapse: collapse;"
			width="50%">
			<tr>
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
	</div>
</body>
</html>
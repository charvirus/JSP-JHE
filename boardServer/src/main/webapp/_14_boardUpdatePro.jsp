<%@page import="board.BoardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%
request.setCharacterEncoding("utf-8");
BoardDAO dao = BoardDAO.getInstance();
String strNo = request.getParameter("no");

String id = (String) session.getAttribute("log");
String title = request.getParameter("title");
String contents = request.getParameter("contents");
String checkPassword = request.getParameter("pw");
String getPw = dao.getBoardPW(strNo);
%>
<meta charset="UTF-8">
<title>글 수정 처리</title>
</head>
<body>
	<%
	if (getPw.equals(checkPassword)) {
		BoardDTO updateBoard = new BoardDTO(id, getPw, title, contents);
		dao.updateBoard(updateBoard, strNo);

		response.sendRedirect("_12_boardView.jsp?no=" + strNo);
	} else {
	%>
	<script>
		alert("비밀번호가 다릅니다.");
		response.sendRedirect("_13_boardUpdate.jsp?no=" + strNo);
	</script>
	<%
	}
	%>
</body>
</html>
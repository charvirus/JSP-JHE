<%@page import="board.BoardDTO"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기 처리</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	
	String id = (String) session.getAttribute("log");
	String pw= request.getParameter("pw");
	String title = request.getParameter("title");
	String content = request.getParameter("contents");
	
	BoardDAO dao = BoardDAO.getInstance();
	
	
	
	BoardDTO newBoard = new BoardDTO(id,pw,title,content);
	dao.addBoards(newBoard);
	response.sendRedirect("_7_boardList.jsp");
	%>
</body>
</html>
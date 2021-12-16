<%@page import="board.BoardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String ses = (String) session.getAttribute("log");
	BoardDAO dao = BoardDAO.getInstance();
	int intNo  = Integer.parseInt(request.getParameter("no"));
	ArrayList<BoardDTO> boards = dao.getBoards(intNo);	
	
	dao.deleteBoard(intNo);
	response.sendRedirect("_7_boardList.jsp");
%>
</body>
</html>
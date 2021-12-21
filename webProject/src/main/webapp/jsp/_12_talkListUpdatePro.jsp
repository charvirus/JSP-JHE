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
request.setCharacterEncoding("UTF-8");
String id = (String) session.getAttribute("log");
String title = request.getParameter("title");
String contents = request.getParameter("contents");
TalklistDAO dao = TalklistDAO.getInstance();

dao.updateTalklist(id, title, contents);
response.sendRedirect("_9_talkList.jsp");
%>
<title></title>
</head>
<body>
	
</body>
</html>
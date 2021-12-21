<%@page import="talklist.TalklistDTO"%>
<%@page import="talklist.TalklistDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MovieBox - 영화 게시판</title>
</head>
<%
request.setCharacterEncoding("UTF-8");
String id = (String) session.getAttribute("log");
String title = request.getParameter("title");
String contents = request.getParameter("contents");
TalklistDAO dao = TalklistDAO.getInstance();
TalklistDTO newTalk = new TalklistDTO(id,title,contents);

dao.addTalklist(newTalk);
response.sendRedirect("_9_talkList.jsp");
%>
<body>
	
</body>
</html>
<%@page import="talklist.TalklistDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
String no = request.getParameter("no");
TalklistDAO dao = TalklistDAO.getInstance();
dao.deleteTalk(no);
response.sendRedirect("_9_talkList.jsp");
%>
<body>

</body>
<script>

</script>
</html>
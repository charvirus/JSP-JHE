<%@page import="userlist.UserListDAO"%>
<%@page import="talklist.TalklistDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title></title>
</head>
<body>
	
</body>
<%
UserListDAO dao = UserListDAO.getInstance();
String id = (String) session.getAttribute("log");
String pw = request.getParameter("pw");
if (dao.checkLogin(id, pw)) {
	response.sendRedirect("_15_MyPage.jsp");
} else {
%>
<script>
	alert("비밀번호가 다릅니다.");
	window.location.href = '_14_MyPageCheck.jsp';
</script>

<%
}
%>
</html>
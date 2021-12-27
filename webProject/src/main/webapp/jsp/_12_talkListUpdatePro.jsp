<%@page import="talklist.TalklistDTO"%>
<%@page import="java.util.ArrayList"%>
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
	<%
	request.setCharacterEncoding("UTF-8");
	String id = (String) session.getAttribute("log");
	String no = request.getParameter("no");
	String pw = request.getParameter("pw");	
	String title = request.getParameter("title");
	String contents = request.getParameter("contents");
	
	TalklistDAO dao = TalklistDAO.getInstance();

	String getPw = dao.getBoardPW(no);
	if (getPw.equals(pw)) {
		dao.updateTalklist(no, title, contents);
		response.sendRedirect("_11_talkListView.jsp?no="+no);
	} else {
	%>
	<script>
		let no = <%=no %>;
		console.log(no);
		alert("비밀번호가 다릅니다.");
		window.location.href = "_12_talkListUpdate.jsp?no=<%=no%>";
	</script>
	<%
	}
	%>
</body>
</html>
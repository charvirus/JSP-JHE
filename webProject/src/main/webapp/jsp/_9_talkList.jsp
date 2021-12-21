<%@page import="java.text.SimpleDateFormat"%>
<%@page import="talklist.TalklistDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="talklist.TalklistDAO"%>
<%@page import="com.mysql.cj.Query"%>
<%@page import="userlist.UserListDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MovieBox - 영화 게시판</title>
<%
TalklistDAO dao = TalklistDAO.getInstance();
ArrayList<TalklistDTO> boards = dao.getTalkList();
String ses = (String) session.getAttribute("log");
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
%>
</head>
<body>
	<div id="grid">
		<header id="subheader1"></header>
		<header id="mainheader"><jsp:include page="top.jsp"></jsp:include></header>
		<header id="subheader2"></header>
		<nav></nav>
		<main>
			<section id="content">
				<% if (boards.size() != 0) {	%>
				<table id="talkTable" border="solid 1px" style="border-collapse: collapse;" width="50%">
					<tr id="tableHeader">
						<td width="3%"><center>번호</center></td>
						<td width="25%"><center>제목</center></td>
						<td width="5%"><center>좋아요</center></td>
						<td width="7%"><center>작성자</center></td>
						<td width="7%"><center>작성일</center></td>
					</tr>
					<%	for (int i = 0; i < boards.size(); i++) {	%>
					<tr>
						<td><center><%=boards.get(i).getTalk_no() %></center></td>
						<td><a href="_11_talkListView.jsp?no=<%=boards.get(i).getTalk_no()%>"><%=boards.get(i).getTalk_title() %></a></td>
						<td><center><%=boards.get(i).getTalk_likes() %></center></td>
						<td><center><%=boards.get(i).getUser_id() %></center></td>
						<td><center><%=sdf.format(boards.get(i).getTalk_regdate()) %></center></td>
					</tr>
					<%	}	%>
				</table>
				<%	} else {	%>
				<span>게시글이 없습니다.</span>
				<%	}		%>
				<div id="buttons">
					<%if(ses != null){%>
						<button onclick="location.href = '_10_talkListWrite.jsp'">글쓰기</button>
					<%}else{ %>
						
					<%} %>
				</div>
			</section>
		</main>
		<aside></aside>
		<footer id="subfooter1"></footer>
		<footer id="mainfooter"><jsp:include page="bottom.jsp"></jsp:include></footer>
		<footer id="subfooter2"></footer>
	</div>
	<script>
		
	</script>
</body>
</html>
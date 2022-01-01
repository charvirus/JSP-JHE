<%@page import="userlist.UserListDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="userlist.UserListDAO"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<%
String ses = (String) session.getAttribute("log");
UserListDAO dao = UserListDAO.getInstance();
%>

<body>
	<main id="headerMain">
		<ul id="headerMenu1">
			<li><a href="service?command=academy">아카데미 작품상</a></li>
			<li><a href="service?command=boxOffice">극장 상영작 영화</a></li>
			<li><a href='service?command=talkList'>영화 게시판</a></li>
			<li><a href="service?command=myPage">마이페이지</a></li>
		</ul>
		<ul id="headerMenu2">
			<%
			if (ses != null) {
				ArrayList<UserListDTO> user = dao.getUserByid(ses);

				String nickName = user.get(0).getUser_nickname();
			%>
			<h3><%=nickName%>님
			</h3>
			<button onclick="location.href = 'service?command=logout'">로그아웃</button>
			<%
			} else {
			%>
			<li id="headerLogin"><a href="service?command=login">로그인</a></li>
			<li id="headerSignUp"><a href="service?command=signUp">회원가입</a></li>
			<%
			}
			%>
		</ul>
	</main>
</body>
</html>
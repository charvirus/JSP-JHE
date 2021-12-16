<%@page import="board.BoardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%
String ses = (String) session.getAttribute("log");
BoardDAO dao = BoardDAO.getInstance();
String strNo = request.getParameter("no");
int intNo = Integer.parseInt(strNo);
ArrayList<BoardDTO> boards = dao.getBoards();
String uid = boards.get(0).getId();
%>
<meta charset="UTF-8">
<title><%=boards.get(0).getTitle()%></title>
<link rel="stylesheet" type="text/css" href="_12_boardView.css">
</head>
<body>
	<div id="grid">
		<header id="sub1"></header>
		<header id="mainHeader">
			<%
			if (ses != null) {
			%>
			<h3>
				<%=ses%>님
			</h3>
			<button onclick="location.href = '_10_boardWrite.jsp'">글쓰기</button>
			<button onclick="location.href = '_16_logOutPro.jsp'">로그아웃</button>
			<button onclick="location.href = '_8_checkPass.jsp'">회원 탈퇴</button>
			<%
			} else {
			%>
			<span>로그인 해주세요 </span>
			<button id="login" onclick="location.href = '_5_login.jsp'">로그인</button>
			<%
			}
			%>
		</header>
		<header id="sub2"></header>
		<nav></nav>
		<main>
			<section id="content">
				<table id="contentTable" border="solid 1px"
					style="border-collapse: collapse;">
					<tr>
						<td><center>제목</center></td>
						<td><%=boards.get(0).getTitle()%></td>
					</tr>
					<tr>
						<td><center>작성자</center></td>
						<td><%=boards.get(0).getId()%></td>
					</tr>
					<tr>
						<td><center>좋아요</center></td>
						<td><%=boards.get(0).getLikes()%></td>
					</tr>
					<tr>
						<td><center>작성일</center></td>
						<td><%=boards.get(0).getRegDate()%></td>
					</tr>
					<tr height="500px">
						<td><center>내용</center></td>
						<td><%=boards.get(0).getContent()%></td>
					</tr>
				</table>
				<button onclick="location.href = '_7_boardList.jsp'">목록</button>
				<%
				if (ses != null && uid.equals(ses)) {
				%>
				<button
					onclick="location.href = '_13_boardUpdate.jsp?no=<%=strNo%>'">수정</button>
				<button
					onclick="location.href = '_15_boardDelete.jsp?no=<%=strNo%>'">삭제</button>
				<%
				} else {
				%>
					<button
					onclick="location.href = '_17_likePro.jsp?no=<%=strNo%>'">좋아요</button>
				<%
				}
				%>
			</section>


		</main>
		<aside></aside>
		<footer></footer>
	</div>
</body>
</html>
<%@page import="movielist.MovieListDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="movielist.MovieListDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MovieBox - 아카데미 작품상 목록</title>
<%
	MovieListDAO dao = MovieListDAO.getInstance();
	ArrayList<MovieListDTO> boards = dao.getMoviesbyScoreHigh();
	String ses = (String) session.getAttribute("log");
%>
</head>
<body>
	<div id="grid">
		<header id="subheader1"></header>
		<header id="mainheader"><jsp:include page="top.jsp"></jsp:include></header>
		<header id="subheader2"></header>
		<nav></nav>
		<div>
		<jsp:include page="academyNav.jsp"></jsp:include>
		</div>
		<main>	
			<section>
				<table id="ad" border="solid 1px" style="border-collapse: collapse;"
					width="50%">
					<tr>
						<td><center>제목</center></td>
						<td><center>개봉일</center></td>
						<td><center>상영 시간</center></td>
						<td><center>IMDB 점수</center></td>
						<td><center>감독/주연배우</center></td>
					</tr>
					<%
					for (int i = 0; i < boards.size(); i++) {
					%>
					<tr>
						<td><%=boards.get(i).getMovie_name()%></td>
						<td><%=boards.get(i).getMovie_reldate()%></td>
						<td><%=boards.get(i).getMovie_time() %></td>
						<td><%=boards.get(i).getMovie_score()%></td>
						<td><%=boards.get(i).getMovie_director()%><br>
						<%=boards.get(i).getMovie_mainactor()%></td>
						<%
						if (ses != null) {
						%>
							<td><button onclick="location.href='_16_addMovieWish.jsp?no=<%=boards.get(i).getMovie_no()%>'">나중에 볼 영화 찜하기</button></td>
						<%
						}
						%>
					</tr>
					<%
					}
					%>
				</table>
			</section>
		</main>
		<aside></aside>
		<footer id="subfooter1"></footer>
		<footer id="mainfooter"><jsp:include page="bottom.jsp"></jsp:include></footer>
		<footer id="subfooter2"></footer>
	</div>
</body>
</html>
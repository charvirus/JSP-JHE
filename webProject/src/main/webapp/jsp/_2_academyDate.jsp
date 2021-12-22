<%@page import="java.text.SimpleDateFormat"%>
<%@page import="movielist.MovieListDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="movielist.MovieListDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<title>MovieBox - 아카데미 작품상 목록</title>
<%
MovieListDAO dao = MovieListDAO.getInstance();
ArrayList<MovieListDTO> dateboards = dao.getMoviesbyRecentDate();
ArrayList<MovieListDTO> scoreboards = dao.getMoviesbyScoreHigh();
ArrayList<MovieListDTO> timeboards = dao.getMoviesbyTimeShort();
String ses = (String) session.getAttribute("log");
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
%>
</head>
<body>
	<div id="grid">
		<header id="subheader1"></header>
		<header id="mainheader"><jsp:include page="top.jsp"></jsp:include></header>
		<header id="subheader2"></header>
		<nav></nav>
		<div>
			<ul>
				<li><input type="radio" id="r1" name="academy" checked>연도별</li>
				<li><input type="radio" id="r2" name="academy">점수별</li>
				<li><input type="radio" id="r3" name="academy">상영시간별</li>
			</ul>
		</div>
		<main>
			<section>
				<table id="dateTable" border="solid 1px"
					style="border-collapse: collapse;" width="50%">
					<tr>
						<td><center>제목</center></td>
						<td><center>개봉일</center></td>
						<td><center>상영 시간</center></td>
						<td><center>IMDB<br>점수</center></td>
						<td><center>감독/주연배우</center></td>
					</tr>
					<%
					for (int i = 0; i < dateboards.size(); i++) {
					%>
					<tr>
						<td><%=dateboards.get(i).getMovie_name()%></td>
						<td><center><%=sdf.format(dateboards.get(i).getMovie_reldate())%></center></td>
						<td><center><%=dateboards.get(i).getMovie_time()%></center></td>
						<td><center><%=dateboards.get(i).getMovie_score()%></center></td>
						<td><%=dateboards.get(i).getMovie_director()%><br> <%=dateboards.get(i).getMovie_mainactor()%></td>
						<%
						if (ses != null) {
						%>
						<td><button
								onclick="location.href='_16_addMovieWish.jsp?no=<%=dateboards.get(i).getMovie_no()%>'">나중에
								볼 영화 찜하기</button></td>
						<%
						}
						%>
					</tr>
					<%
					}
					%>
				</table>
				<table id="scoreTable" border="solid 1px"
					style="border-collapse: collapse;" width="50%">
					<tr>
						<td><center>제목</center></td>
						<td><center>개봉일</center></td>
						<td><center>상영 시간</center></td>
						<td><center>IMDB<br>점수</center></td>
						<td><center>감독/주연배우</center></td>
					</tr>
					<%
					for (int i = 0; i < dateboards.size(); i++) {
					%>
					<tr>
						<td><%=scoreboards.get(i).getMovie_name()%></td>
						<td><center><%=sdf.format(scoreboards.get(i).getMovie_reldate())%></center></td>
						<td><center><%=scoreboards.get(i).getMovie_time()%></center></td>
						<td><center><%=scoreboards.get(i).getMovie_score()%></center></td>
						<td><%=scoreboards.get(i).getMovie_director()%><br> <%=scoreboards.get(i).getMovie_mainactor()%></td>
						<%
						if (ses != null) {
						%>
						<td><button
								onclick="location.href='_16_addMovieWish.jsp?no=<%=scoreboards.get(i).getMovie_no()%>'">나중에
								볼 영화 찜하기</button></td>
						<%
						}
						%>
					</tr>
					<%
					}
					%>
				</table>
				<table id="timeTable" border="solid 1px"
					style="border-collapse: collapse;" width="50%">
					<tr>
						<td><center>제목</center></td>
						<td><center>개봉일</center></td>
						<td><center>상영 시간</center></td>
						<td><center>IMDB<br>점수</center></td>
						<td><center>감독/주연배우</center></td>
					</tr>
					<%
					for (int i = 0; i < dateboards.size(); i++) {
					%>
					<tr>
						<td><%=timeboards.get(i).getMovie_name()%></td>
						<td><center><%=sdf.format(timeboards.get(i).getMovie_reldate())%></center></td>
						<td><center><%=timeboards.get(i).getMovie_time()%></center></td>
						<td><center><%=timeboards.get(i).getMovie_score()%></center></td>
						<td><%=timeboards.get(i).getMovie_director()%><br> <%=timeboards.get(i).getMovie_mainactor()%></td>
						<%
						if (ses != null) {
						%>
						<td><button
								onclick="location.href='_16_addMovieWish.jsp?no=<%=timeboards.get(i).getMovie_no()%>'">나중에
								볼 영화 찜하기</button></td>
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
	<script type="text/javascript" src="../js/_2_academy.js"></script>
	<script>
		$(document).ready(function() {
			tablevisible();
		});
	</script>
</body>
</html>
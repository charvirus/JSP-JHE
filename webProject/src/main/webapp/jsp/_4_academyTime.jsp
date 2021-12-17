<%@page import="movielist.MovieListDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="movielist.MovieListDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MovieBox</title>
<%
	MovieListDAO dao = MovieListDAO.getInstance();
	ArrayList<MovieListDTO> boards = dao.getMoviesbyTimeShort();
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
			<div>
				<table id="ad" border="solid 1px"
					style="border-collapse: collapse;" width="100%">
				<%
					for(int i = 0;i<boards.size();i++){
				%>
					<tr>
						<td><%=boards.get(i).getMovie_name() %></td>
						<td><%=boards.get(i).getMovie_reldate() %></td>
						<td><%=boards.get(i).getMovie_score() %></td>
						<td><%=boards.get(i).getMovie_director() %><br>
							<%=boards.get(i).getMovie_mainactor() %></td>
					</tr>
				<%} %>
				</table>
			</div>
		</main>
		<aside></aside>
		<footer id="subfooter1"></footer>
		<footer id="mainfooter"><jsp:include page="bottom.jsp"></jsp:include></footer>
		<footer id="subfooter2"></footer>
	</div>
</body>
</html>
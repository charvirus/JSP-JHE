<%@page import="movielist.MovieListDAO"%>
<%@page import="wishlist.WishListDTO"%>
<%@page import="wishlist.WishListDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	WishListDAO wldao = new WishListDAO();
	MovieListDAO mldao = new MovieListDAO();
	String id = (String) session.getAttribute("log");
	int movieNo = Integer.parseInt(request.getParameter("no"));
	String movieName = mldao.getMoviesNameById(movieNo+"");
	wldao.addWishList(new WishListDTO(id,movieNo,movieName));
	response.sendRedirect("_2_academyDate.jsp");
	%>
</body>
</html>
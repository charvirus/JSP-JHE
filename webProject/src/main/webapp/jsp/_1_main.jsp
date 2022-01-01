<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MovieBox</title>
</head>
<body>
	<div id="grid">
		<header id="subheader1"></header>
		<header id="mainheader">
			<c:import url="top.jsp"></c:import>
		</header>
		<header id="subheader2"></header>
		<nav></nav>
		<main>
			<div id="ad">
				<a href="https://thegameawards.com/">
					<section id="ad_banner">
						<article id="adbanner">배너</article>
					</section>
				</a>
			</div>
		</main>
		<aside></aside>
		<footer id="subfooter1"></footer>
		<footer id="mainfooter"><jsp:include page="bottom.jsp"></jsp:include></footer>
		<footer id="subfooter2"></footer>
	</div>
</body>
</html>
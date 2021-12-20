<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MovieBox - 로그인</title>
</head>
<body>
	<div id="grid">
		<header id="subheader1"></header>
		<header id="mainheader"><jsp:include page="top.jsp"></jsp:include></header>
		<header id="subheader2"></header>
		<nav></nav>
		<main>
			<section>
				<form method="post" action="_6_loginPro.jsp">
					<article id="idpws">
						<span>ID&#9;<input type="text" name="id" required></span>
						<span>PW&#9;<input type="password" name="pw" required></span>
						<input id="submit" type="submit" value="로그인">
					</article>
				</form>
			</section>
		</main>
		<aside></aside>
		<footer id="subfooter1"></footer>
		<footer id="mainfooter"><jsp:include page="bottom.jsp"></jsp:include></footer>
		<footer id="subfooter2"></footer>
	</div>
</body>
</html>
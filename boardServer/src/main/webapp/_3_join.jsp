<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Join</title>
<link rel="stylesheet" type="text/css" href="_3_join&login.css">
</head>
<body>
	<div id="grid">
		<header></header>
		<nav></nav>
		<main>
			<section id="center1">
				<article id="mainHeader">
					<h1 id="h1">Join</h1>
				</article>
			</section>
			<section id="center2">
				<form method="post" action="_4_joinPro.jsp">
					<article id="idpws">
						<span>ID&#9;<input type="text" name="id" required></span>
						<span>PW&#9;<input type="password" name="pw" required></span>
						<input id="submit" type="submit" value="가입">
					</article>
				</form>
			</section>
		</main>
		<aside></aside>
		<footer></footer>
	</div>
</body>
</html>
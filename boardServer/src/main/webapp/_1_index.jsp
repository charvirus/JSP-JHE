<%@page import="user.UserDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="user.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GREEN</title>
<link rel="stylesheet" type="text/css" href="_1_index.css">
</head>
<body>
	<!-- 아이디/패스워드 -> 버튼  두개 (login)(join) -->

	<%
	UserDAO dao = UserDAO.getInstance();
	ArrayList<UserDTO> datas = dao.getUsers();

	for (int i = 0; i < datas.size(); i++) {
		UserDTO user = datas.get(i);
		System.out.println(String.format("%s/ %s/ %s", user.getId(), user.getPw(), user.getRegDate()));
	}
	%>
	<div id="grid">
		<header></header>
		<nav></nav>
		<main>
			<section id="center1">
				<article id="mainHeader">
					<h1 id="h1">MAIN PAGE</h1>
				</article>
			</section>
			<section id="center2">
					<input type="button" id="login" value="Login">
					<input
						type="button" id="join" value="Join">
				</section>
		</main>
		<aside></aside>
		<footer></footer>
	</div>
	<script>
		document.querySelector('input#login').addEventListener('click',e=>{			
			location.href=`_5_login.jsp`;
		});
		
		document.querySelector('input#join').addEventListener('click',e=>{
			//const id = document.querySelector('input#id').value;
			location.href=`_3_join.jsp`;
		});
	</script>
</body>
</html>
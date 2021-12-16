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
	String intNo  = request.getParameter("no");
		
	String getPw = dao.getBoardPW(intNo);
%>
<meta charset="UTF-8">
<title>글 삭제</title>
<link rel="stylesheet" type="text/css" href="_15_boardDelete.css">
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
				<form method="post" action="">
					<span>비밀번호를 입력해주세요</span>
					<input type="text" name="pwcheck">
					<input type="button" value="제출" onclick="checkPw(form)">
				</form>
			</section>
		</main>
		<aside></aside>
		<footer></footer>
	</div>

	<script>
	
	function checkPw(form){
		let getPw = String(<%=getPw%>);
		
		if (form.pwcheck.value === getPw) {
			alert("삭제되었습니다.");
			location.href = "_15_boardDeletePro.jsp?no="+<%=intNo%>;
		} else {
			alert("비밀번호가 다릅니다.");
			location.href = "_7_boardList.jsp";
		}
		
	}
	</script>
</body>
</html>
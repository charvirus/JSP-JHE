<%@page import="talklist.TalklistDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="talklist.TalklistDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%
String ses = (String) session.getAttribute("log");
TalklistDAO dao = TalklistDAO.getInstance();
String no = request.getParameter("no");
System.out.println(no);
ArrayList<TalklistDTO> boards = dao.getTalklistDetails(no);
String uid = boards.get(0).getUser_id();
System.out.println(uid);
String getPw = dao.getBoardPW(no);
%>
<title><%=boards.get(0).getTalk_title()%></title>
</head>
<body>
	<div id="grid">
		<header id="subheader1"></header>
		<header id="mainheader"><jsp:include page="top.jsp"></jsp:include></header>
		<header id="subheader2"></header>
		<nav></nav>
		<main>

			<section>

				<table border="solid 1px" style="border-collapse: collapse;"
					width="50%">
					<tr>
						<td>제목</td>
						<td><%=boards.get(0).getTalk_title()%></td>
					</tr>
					<tr>
						<td>좋아요</td>
						<td><%=boards.get(0).getTalk_likes()%></td>
					</tr>
					<tr>
						<td>작성일</td>
						<td><%=boards.get(0).getTalk_regdate()%></td>
					</tr>
					<tr>
						<td>내용</td>
						<td><%=boards.get(0).getTalk_content()%></td>
					</tr>

				</table>

				<button onclick="location.href='service?command=talkList'">목록</button>
				<%
				if (ses != null && uid.equals(ses)) {
				%>
				<button
					onclick="location.href= 'service?command=updateTalkForm&no=<%=boards.get(0).getTalk_no()%>'">수정</button>
				<form onSubmit="return false;">

					<button onclick="checkPw(form)">삭제</button>
					삭제하실려면 비밀번호를 입력해주세요<input type="password" id="pw" name="pw">
				</form>
				<%
				} else {
				%>
				<button onclick="location.href = ''">좋아요</button>
				<%
				}
				%>
			</section>

		</main>
		<aside></aside>
		<footer id="subfooter1"></footer>
		<footer id="mainfooter"><jsp:include page="bottom.jsp"></jsp:include></footer>
		<footer id="subfooter2"></footer>
	</div>
	<script>
		function checkPw(form){
			let getPw = "<%=getPw%>";
			if(form.pw.value === getPw){
				alert("삭제되었습니다.");
				window.location.href = "service?command=deleteTalk&no=<%=boards.get(0).getTalk_no()%>";
			} else {
				document.getElementById('pw').value = '';
				alert("비밀번호가 다릅니다.");
			}
		}
	</script>
</body>

</html>
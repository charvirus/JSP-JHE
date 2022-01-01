<%@page import="userlist.UserListDTO"%>
<%@page import="userlist.UserListDAO"%>
<%@page import="commentlist.CommentListDTO"%>
<%@page import="commentlist.CommentListDAO"%>
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
String no = request.getParameter("no");
TalklistDAO tdao = TalklistDAO.getInstance();
ArrayList<TalklistDTO> tboards = tdao.getTalklistDetails(no);
CommentListDAO cdao = CommentListDAO.getInstance();
ArrayList<CommentListDTO> cboards = cdao.getCommentListByTid(no);
UserListDAO udao = UserListDAO.getInstance();
ArrayList<UserListDTO> uboards = udao.getUserByid(ses);
String uNickname = uboards.get(0).getUser_nickname();
String uid = tboards.get(0).getUser_id();
String getPw = tdao.getBoardPW(no);


%>
<title><%=tboards.get(0).getTalk_title()%></title>
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
						<td><%=tboards.get(0).getTalk_title()%></td>
					</tr>
					<tr>
						<td>좋아요</td>
						<td><%=tboards.get(0).getTalk_likes()%></td>
					</tr>
					<tr>
						<td>작성일</td>
						<td><%=tboards.get(0).getTalk_regdate()%></td>
					</tr>
					<tr>
						<td>내용</td>
						<td><%=tboards.get(0).getTalk_content()%></td>
					</tr>
				</table>
				<%
				if (ses != null && uid.equals(ses)) {
				%>
				<form onSubmit="return false;">
					<button
						onclick="location.href='service?command=updateTalk&no=<%=tboards.get(0).getTalk_no()%>'">수정</button>
					<button onclick="checkPw(form)">삭제</button>
					삭제하실려면 비밀번호를 입력해주세요<input type="password" id="pw" name="pw">
				</form>
				<%
				} else {
				%>
				<button
					onclick="location.href = 'service?command=upLike&no=<%=no%>'">좋아요</button>
				<%
				}
				%>
				<button onclick="location.href='service?command=talkList'">목록</button>
			</section>
			<section>
				<%
				if (ses != null) {
				%>
				<form onSubmit="return false;" method="post"
					action="service">
					<p>댓글</p>
					<table border="solid 1px" style="border-collapse: collapse;"
						width="50%">
						<%
						if (cboards.size() != 0) {
							for (int i = 0; i < cboards.size(); i++) {
						%>
							<tr><td><%=cboards.get(i).getUser_id() %></td><td><%=cboards.get(i).getComment_content() %></td></tr>
						<%
						}
						} else {
						%>
						<span>댓글이 없습니다.</span>
						<%
						}
						%>
					</table>
					<input type="text" name="comment_content" id="comment">
					<button onclick="addComment(form)">등록</button>
					<input  type="hidden" name="command" value="comment">
					<input  type="hidden" name="uid" value="<%=uNickname%>">
					<input  type="hidden" name="tid" value="<%=no%>">
				</form>
				<%
				} else {
				%>
				로그인해 댓글 작성이 가능합니다
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
				window.location.href = "service?command=deleteTalk&no=<%=tboards.get(0).getTalk_no()%>";
			} else {
				document.getElementById('pw').value = '';
				alert("비밀번호가 다릅니다.");
			}
		}
		
		function addComment(form){
			
			if(form.comment.value === ""){
				alert("내용을 입력해주세요.");
			}else{
				form.submit();
			}
		}
	</script>
</body>

</html>
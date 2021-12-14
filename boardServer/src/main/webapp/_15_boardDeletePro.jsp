<%@page import="board.BoardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%
		BoardDAO dao = BoardDAO.getInstance();
		String strNo = request.getParameter("no");
		int intNo = Integer.parseInt(strNo);
		ArrayList<BoardDTO> boards = dao.getBoards(intNo);	
		
		String getPw = dao.getBoardPW(strNo);
		String checkPassword = "";
%>
<meta charset="UTF-8">
<title>글 삭제</title>

</head>
<body>

	<form method="post" action="">
		<span>비밀번호를 입력해주세요</span>
		<input type="text" name = "pwcheck"><br>
		<input type="button" value="submit" onclick="checkPw(form)">
	</form>
	
	
	<script>
	function checkPw(form){
		if(form.pwcheck.value == <%=getPw%>){
		<%
			dao.deleteBoard(strNo);
		%>
			alert("삭제되었습니다.");
			location.href="_7_boardList.jsp";

		}else{
			alert("비밀번호가 다릅니다.");
			response.sendRedirect("_12_boardView.jsp?no=" + strNo);
		}
	}
	
	</script>
</body>
</html>
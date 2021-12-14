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
		ArrayList<BoardDTO> boards = dao.getBoards(intNo);	%>
<meta charset="UTF-8">
<title><%=boards.get(0).getTitle()%></title>
</head>
<body>
	<form method="post" action="_14_boardUpdatePro.jsp?no=<%=strNo%>">
		<table>
			<tr>
				<td>제목</td>
				<td><input type="text" name="title" id="title" value="<%=boards.get(0).getTitle() %>"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea name="contents" id="contents" rows="15" cols="75"><%=boards.get(0).getContent()%></textarea></td>
			</tr>
			<tr>
				<td>글 작성을 하실때 설정한<br> 비밀번호를 입력해 수정해주세요</td>
				<td><input type="password" name="pw" id="pw"></td>
			</tr>
		</table>
		<input type="submit" value="등록">
	</form>
</body>
</html>
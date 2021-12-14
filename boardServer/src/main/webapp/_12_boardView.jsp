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
String strNo = request.getParameter("no");
int intNo = Integer.parseInt(strNo);
ArrayList<BoardDTO> boards = dao.getBoards();
String uid = boards.get(0).getId();
%>
<meta charset="UTF-8">
<title><%=boards.get(0).getTitle()%></title>
</head>
<body>
	<table border="solid 1px" style="border-collapse: collapse;"
		width="50%">
		<tr>
			<td>제목</td>
			<td><%=boards.get(0).getTitle()%></td>
		</tr>
		<tr>
			<td>작성자</td>
			<td><%=boards.get(0).getId()%></td>
		</tr>
		<tr>
			<td>좋아요</td>
			<td><%=boards.get(0).getLikes()%></td>
		</tr>
		<tr>
			<td>작성일</td>
			<td><%=boards.get(0).getRegDate()%></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><%=boards.get(0).getContent()%></td>
		</tr>
	</table>
	<button onclick="location.href = '_7_boardList.jsp'">목록</button>
	<%
	if (ses != null && uid.equals(ses)) {
	%>
	<button onclick="location.href = '_13_boardUpdate.jsp?no=<%=strNo%>'">수정</button>
	<button onclick="location.href = '_15_boardDeletePro.jsp?no=<%=strNo%>'">삭제</button>
	<%
	}
	%>

</body>
</html>
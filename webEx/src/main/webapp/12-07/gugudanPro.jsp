<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>채점</title>
</head>
<body>
	<%
		int score=0;
	%>
	<h1>채점</h1>

	<table>
		<tr>
			<td>번호</td>
			<td>정답</td>
			<td>사용자 값</td>
			<td>정오표</td>
		</tr>
		<%
		for (int i = 0; i < 5; i++) {
			int userAnswer = Integer.parseInt(request.getParameter("q" + (i + 1)));
			int answer = Integer.parseInt(request.getParameter("answer" + (i + 1)));
			String correct =  userAnswer == answer ? "O" : "X";
			score += userAnswer == answer ?  20 : 0;
		%>
		<tr>
			<td><%=i + 1%></td>
			<td><%=answer%></td>
			<td><%=userAnswer%></td>
			<td><%=correct%></td>
		</tr>
		<%
		}
		%>
	</table>
	<h1><%=score%></h1>
</body>
</html>
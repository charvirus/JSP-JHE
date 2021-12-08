<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
span {
	white-space: pre;
}
</style>
<title>99</title>
</head>
<body>
	<h1>99</h1>
	<form method="post" action="gugudanPro.jsp">
		<table border="1">
			<%
        	Random ran = new Random();
        
        	int first[] = new int [5];
        	int second[] = new int [5];
        	int answer[] = new int [5];
        	for(int i = 0;i<5;i++){
        		first[i] = ran.nextInt(8)+2;
        		second[i] = ran.nextInt(9)+1;
        		answer[i] = first[i] * second[i];
        		System.out.println(first[i]+":"+second[i]+":"+answer[i]);
        	}
        %>
			<tr>
				<td>번호</td>
				<td>문제</td>
				<td width="30%">정답</td>
			</tr>
			<% for(int i = 0;i<5;i++){ %>
			<tr>
				<td><%=i+1 %></td>
				<td><%=first[i]%> X <%=second[i]%></td>
				<td width="30%"><input type="text" name="q<%=i+1 %>" id="">
				<input type="hidden" name="answer<%=i+1 %>" value="<%=answer[i]%>"></td>
				
			</tr>
			<%} %>

		</table>

		<input type="submit">
	</form>
</body>
</html>
<%-- JSP 주석 태그 --%>
<!-- 지시자 태그 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	Hello World
	<%
	// JSP : Java Server Page
	// ㄴ html 문서 안에 java 문장을 작성하는 것
	
	// 1) 지시자 태그 <%@>
	// 2) 주석 태그	<%-- --% >
	// 3) 스크립틀릿	<%% >
	// 4) 표현식	<%= % >
	
	
	//스크립틀릿(scriptlet) 태그 안에 자바 문장을 작성할 수 있다.
	int num = 10;
	System.out.println(num);
	%>
	
	<%
	num = 1;
	while(num<=10){%>
	<h1><%=num %></h1>
	<%
		num++;
	}
	%>
	
	
	<%
		// 구구단 2~9 단까지  웹 페이지에 출력
		for(int i = 2;i<10;i++){
			%>
			<h2><%=i %>단</h2>
			<%
			for(int j = 1;j<10;j++){
				%>
				<h3><%=i%> X <%=j%> = <%=i*j%></h3>
				<% 
			}
		}
	%>
</body>
</html>
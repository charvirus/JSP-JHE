<%-- JSP �ּ� �±� --%>
<!-- ������ �±� -->
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
	// �� html ���� �ȿ� java ������ �ۼ��ϴ� ��
	
	// 1) ������ �±� <%@>
	// 2) �ּ� �±�	<%-- --% >
	// 3) ��ũ��Ʋ��	<%% >
	// 4) ǥ����	<%= % >
	
	
	//��ũ��Ʋ��(scriptlet) �±� �ȿ� �ڹ� ������ �ۼ��� �� �ִ�.
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
		// ������ 2~9 �ܱ���  �� �������� ���
		for(int i = 2;i<10;i++){
			%>
			<h2><%=i %>��</h2>
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
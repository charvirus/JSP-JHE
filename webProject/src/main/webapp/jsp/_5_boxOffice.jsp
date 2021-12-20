<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" src="../js/_5_boxOffice.js"></script>
<title>일별 박스 오피스</title>
</head>
<body>
	<div id="grid">
		<header id="subheader1"></header>
		<header id="mainheader"><jsp:include page="top.jsp"></jsp:include></header>
		<header id="subheader2"></header>
		<nav></nav>
		<main>
		<div>
			<table id="boxOffice" border="1" width="50%">
				<tr id="boxOfficeHeader">
					<td width="2%"><center>순위</center></td>
					<td width="25%"><center>영화명</center></td>
					<td width="5%"><center>개봉일</center></td>
					<td width="7%"><center>일일 관객수</center></td>
					<td width="7%"><center>누적 관객수</center></td>
				</tr>
			</table>
		</div></main>
		<aside></aside>
		<footer id="subfooter1"></footer>
		<footer id="mainfooter"><jsp:include page="bottom.jsp"></jsp:include></footer>
		<footer id="subfooter2"></footer>
	</div>
	<script>
	$(document).ready(function(){
		getAPI();
	});
	</script>
</body>
</html>
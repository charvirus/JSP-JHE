<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="validate.css">
</head>
<body>
	<div id="grid">
		<header id="header1"></header>
		<header id="header">
			<h1>NAVER</h1>
		</header>
		<header id="header2"></header>
		<nav></nav>
		<main>

			<form method="post" action="signUp.jsp">
				<section id="mainSection">
					<article id="first">
						<input type="checkbox" name="checkAll" id="checkAll">
						<span>네이버 이용약관, 개인정보 수집 및 이용, 위치정보 이용약관(선택),<br> 프로모션
							정보 수신(선택)에 모두 동의합니다.
						</span><br>
					</article>
					<article id="second">
						<input type="checkbox" class="btn" name="termsService"> <span>네이버
							이용약관 동의 (필수)</span><br>
					</article>
					<article id="third">
						<input type="checkbox" class="btn" name="termsPrivacy"> <span>개인정보
							수집 및 이용 동의 (필수)</span><br>
					</article>
					<article id="forth">
						<input type="checkbox" class="btn"> <span>위치정보 이용약관
							동의 (선택)</span><br>
					</article>
					<article id="fifth">
						<input type="checkbox" class="btn"> <span>프로모션 정보
							수신 동의 (선택)</span><br>
					</article>
					<input type="button" value="submit" onclick="checkVal(form)">
				</section>
			</form>
		</main>
		<aside></aside>
		<footer></footer>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script>

		function checkVal(form) {
			let chk = false;

			if (form.termsService.checked && form.termsPrivacy.checked) {
				chk = true;
			}

			if (chk) {
				form.submit();
			} else {
				alert("네이버 이용약관과 개인정보 수집 및 이용에 대한 안내 모두 동의해주세요.");
			}
		}
		
		
			$("#checkAll").click(function() {
				if ($("#checkAll").prop("checked")) {					
					$(".btn").prop("checked", true);
				} else {
					$(".btn").prop("checked", false);
				}
			});
			
			$(".btn").click(function(){
				if($("input.btn[type=checkbox]:checked").length==4){
					$("#checkAll").prop("checked", true);
				} else {
					$("#checkAll").prop("checked", false);
				}
			});
		
	</script>
</body>
</html>
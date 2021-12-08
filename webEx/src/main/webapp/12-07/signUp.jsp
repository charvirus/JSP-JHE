<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="signUp.css">
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
			<form method="post" action="signUpPro.jsp" onsubmit="return false">
				<section id="mainSection">
					<article id="first">
						<h1>아이디</h1>
						<input type="text" name="id"> <span>@naver.com</span>
					</article>
					<article id="second">
						<h1>비밀번호</h1>
						<input type="password" id="pw" name="pw" required>
					</article>
					<article id="third">
						<h1>비밀번호 재확인</h1>
						<input type="password" id="pwCheck" name="pwCheck" required><br>
						<span>설정하려는 비밀번호가 맞는지 확인하기 위해 다시 입력 해주세요.</span>
					</article>
					<article id="forth">
						<h1>이름</h1>
						<input type="text" name="name" required>
					</article>
					<article  id="fifth">
						<h1>생년월일</h1>
						<input type="date" name="date" required>
					</article>
					<article  id="sixth">
						<h1>성별</h1>
						<select name="gender">
							<option value>성별</option>
							<option value="남">남</option>
							<option value="여">여</option>
						</select>
					</article>
					<article id="seventh">
						<h1>본인 확인 이메일(선택)</h1>
						<input type="text" name="checkAnotherEmail"
							placeholder="선택입력">
					</article>
					<article id="eighth">
						<h1>휴대전화</h1>
						<select name="telephoneFront" required>
							<option value="82" selected>대한민국 +82</option>
							<option value="1">미국 +1</option>
							<option value="81">일본 +81</option>
							<option value="852">홍콩 +852</option>
							<option value="49">독일 +49</option>
						</select> <input type="text" name="telephone" placeholder="전화번호 입력"
							required> <a>인증번호 받기</a>
					</article>
					<article id="ninth">
						<input type="text" name="verifiNumber" placeholder="인증번호 입력하세요"
							required>
					</article>

					<input type="submit" value="가입하기" onclick="check(form)">
				</section>
			</form>
		</main>
		<aside></aside>
		<footer></footer>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script>
		function check(form) {
			if (form.pw.value !== form.pwCheck.value) {
				alert("비밀번호가 다릅니다.");
				form.pw.value = "";
				form.pwCheck.value = "";
				form.pw.focus();
			} else {
				form.submit();
			}
		}
	</script>
</body>
</html>
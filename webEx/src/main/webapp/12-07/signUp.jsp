<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<form method="post" action="signUpPro.jsp" onsubmit="return false">
		<h1>아이디</h1>
		<input type="text" name="id" > <span>@naver.com</span><br>
		<h1>비밀번호</h1>
		<input type="password" id="pw" name="pw" required><br>
		<h1>비밀번호 재확인</h1>
		<input type="password" id="pwCheck" name="pwCheck" required>
		<br><span>설정하려는 비밀번호가 맞는지 확인하기 위해 다시 입력 해주세요.</span><br>
		<h1>이름</h1>
		<input type="text" name="name" required><br>
		<h1>생년월일</h1>
		<input type="date" name="date" required><br>
		<h1>성별</h1>
		<select name="gender">
			<option value>성별</option>
			<option value="남">남</option>
			<option value="여">여</option>
		</select><br>
		<h1>본인 확인 이메일(선택)</h1>
		<br> <input type="text" name="checkAnotherEmail"
			placeholder="선택입력"><br>
		<h1>휴대전화</h1>
		<br> <select name="telephoneFront" required>
			<option value="82" selected>대한민국 +82</option>
			<option value="1">미국 +1</option>
			<option value="81">일본 +81</option>
			<option value="852">홍콩 +852</option>
			<option value="49">독일 +49</option>
		</select><br> <input type="text" name="telephone" placeholder="전화번호 입력" required> <a>인증번호
			받기</a><br> <input type="text" name="verifiNumber" placeholder="인증번호 입력하세요" required>
		<span>인증받은 후 인증번호를 입력해야합니다.</span><br> <input type="submit"
			value="가입하기" onclick="check(form)">
	</form>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script>
		function check(form){
			if(form.pw.value !== form.pwCheck.value){
				alert("비밀번호가 다릅니다.");
				form.pw.value = "";
				form.pwCheck.value = "";
				form.pw.focus();
			}else{
				form.submit();
			}
		}
	</script>
</body>
</html>
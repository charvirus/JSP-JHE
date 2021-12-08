<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수강 신청</title>
</head>
<body>
	<h1>NAVER</h1>
	<form method="post" action="signUp.jsp">
		<input type="checkbox" id="checkAll" ><span>네이버
			이용약관, 개인정보 수집 및 이용, 위치정보 이용약관(선택),</span><br> <span> 프로모션 정보
			수신(선택)에 모두 동의합니다.</span><br> <input type="checkbox" name="termsService"><span>네이버
			이용약관 동의</span><br> <input type="checkbox" name="termsPrivacy"><span>개인정보
			수집 및 이용 동의</span><br> <input type="checkbox"><span>위치정보
			이용약관 동의</span><br> <input type="checkbox"><span>프로모션 정보
			수신 동의</span><br> <input type="button" value="submit"
			onclick="checkVal(form)">
	</form>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script>
		function checkVal(form) {
			let chk = false;
			
				if (form.termsService.checked && form.termsPrivacy.checked) {
					chk=true;
				}
			

			if (chk) {
				form.submit();
			} else {
				alert("네이버 이용약관과 개인정보 수집 및 이용에 대한 안내 모두 동의해주세요.");
			}
		}

		$("#checkAll").click(function(){
			$("input:checkbox").prop("checked","checked");
		});
	</script>
</body>
</html>
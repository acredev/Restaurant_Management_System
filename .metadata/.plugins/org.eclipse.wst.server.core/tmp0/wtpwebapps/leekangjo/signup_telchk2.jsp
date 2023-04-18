<%@ page import="leekangjo.signup" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
	<title>전화번호 본인 인증</title>
	<link href="css/Header.css" rel="stylesheet" type="text/css">
    <link href="css/signup_style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<h2>전화번호 본인 인증</h2>
	<script type="text/javascript">
		function showAlert() {
			alert("인증번호가 전송되었습니다.");
		}
		document.querySelector('form[name="form_telchk"]').addEventListener('submit', function(e) {
			e.preventDefault(); // 기본 동작 취소
			if (${chknum} === document.form_telchk.telchk.value) {
				alert("전화번호 본인인증이 완료되었습니다.");
				opener.document.signup.tel.readOnly = true;
				window.close();
			} else {
				alert("전화번호 본인인증이 실패했습니다. 다시 시도해 주세요.");
			}
		});
	</script>
	<fieldset>
		<form action="signup_telchk.jsp" method="post" name="form_telchk">
			인증번호 : <input type="text" name="telchk" maxlength="5">
			<input type="submit" value="본인인증" onclick="showAlert();">
		</form>
	</fieldset>
</body>
</html>

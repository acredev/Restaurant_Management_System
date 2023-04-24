<%@page import="leekangjo.signup" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width-device-width,initial-scale-1.0,user-scalable=no">
	<title>LEEKANGJO - 휴대폰 번호 본인 인증</title>
	<link href="../../css/Header.css" rel="stylesheet" type="text/css">
    <link href="../../css/signup_style.css" rel="stylesheet" type="text/css">
    <script src="../../js/signup.js"></script>
</head>
<body>
	<h2>휴대폰 번호 본인 인증</h2>
	<%
	// 문자열의 인코딩 방식 설정
	request.setCharacterEncoding("UTF-8");
	// 파라미터를 통해 받아온 값을 변수에 저장
	String tel = request.getParameter("tel");
	
	// 클래스에 지정한 함수를 사용하기 위한 객체 선언
	signup signup_telchk = new signup();
	
	// 클래스에 지정한 함수를 실행시킨 결과값을 변수에 저장
	int chknum = signup_telchk.telchk(tel);
	%>
	<script type="text/javascript">
		function signup_first_telchk_result()
		{
			if (document.form_telchk.telchk.value == "" || document.form_telchk.length < 0)
			{
				alert("인증번호를 입력 후 다시 시도해 주세요.");
				document.form_telchk.tel.focus();
			}
			else
			{
				if(<%=chknum%> == document.form_telchk.telchk.value)
				{
					alert("휴대폰 본인인증이 완료되었습니다.");
					opener.document.signup_first.telchk.value = "tel_chkyes";
					opener.document.signup_first.tel.readOnly = true;
					opener.document.signup_first.tel.style.color = "blue";
					opener.document.signup_first.tel.style.onfocus = "this.blur();";
					window.close();
				}
				else
				{
					alert("휴대폰 본인인증이 실패했습니다. 다시 시도해 주세요.");
				}
			}
		}
	</script>
	<fieldset>
		<form action="signup_telchk.jsp" method="post" name="form_telchk">
			인증번호 : <input type="text" name="telchk" maxlength="5">
			<input type="button" value="본인인증" onclick="signup_first_telchk_result()">
		</form>
	</fieldset>	
</body>
</html>
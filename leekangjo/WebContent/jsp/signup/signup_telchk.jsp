<!-- 
회원가입 > 휴대폰 번호 본인인증을 위한 화면입니다.
 -->

<%@page import="leekangjo.SignUp" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width-device-width,initial-scale-1.0,user-scalable=no">
	<title>LEEKANGJO - 휴대폰 번호 본인 인증</title>
	<link href="/leekangjo/css/LoginMain.css" rel="stylesheet">
	<link href="/leekangjo/css/Header.css" rel="stylesheet" type="text/css">
    <link href="/leekangjo/css/signup_style.css" rel="stylesheet" type="text/css">
    <link href="/leekangjo/css/signup_first.css" rel="stylesheet">
    <link href="/leekangjo/css/buttonST.css" rel="stylesheet">
    <link rel="icon" href="/leekangjo/img/favicon1.png" type="image/x-icon" sizes="16x16">
    <script src="/leekangjo/js/signup.js"></script>
</head>
<body style="overflow-x:hidden;overflow-y:hidden">
<%
	// 문자열의 인코딩 방식 설정
	request.setCharacterEncoding("UTF-8");
	// 파라미터를 통해 받아온 값을 변수에 저장
	String tel = request.getParameter("tel");
	
	// 파라미터를 통해 받아온 휴대폰 번호값이 존재하지 않는다면...
	if (tel == null || tel.isEmpty())
	{
%>
		<form name="form_telchk">
			<div class="outBox">
				<div class="boxtitle">
					<img src="/leekangjo/img/Logo4_warning.png" alt="" class="loginImg" onclick="location.href='/leekangjo/index.jsp'">
					<h2>잘못된 접근입니다.</h2>
				</div>
			</div>
		</form>
	<%
		}
		// 클래스에 지정한 함수를 사용하기 위한 객체 선언
		SignUp signup_telchk = new SignUp();
		
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
    <div id="box">
	<fieldset>
            <img src="/leekangjo/img/Logo4.png" alt="" class="loginImg">
            <h2>SMS인증</h2>
		<form action="signup_telchk.jsp" method="post" name="form_telchk" class="formD">
			<input type="text" class="telchk" name="telchk" maxlength="5" placeholder="* 인증번호" >
            <button type="button" class="tagbarBT" onclick="signup_first_telchk_result()">본인인증</button>
		</form>
	</fieldset>
    </div>
</body>
</html>
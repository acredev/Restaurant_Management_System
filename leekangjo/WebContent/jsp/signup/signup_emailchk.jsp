<!-- 
회원가입 > 이메일 본인인증 화면입니다.
 -->

<%@page import="leekangjo.SignUp_mail" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width-device-width,initial-scale-1.0,user-scalable=no">
	<title>LEEKANGJO - 이메일 본인 인증</title>
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
	String email = request.getParameter("email");
	
	// 파라미터를 통해 넘어온 이메일값이 존재하지 않는다면...
	if (email == null || email.isEmpty())
	{
%>
		<form name="form_emailchk">
			<div class="outBox">
				<div class="boxtitle">
					<img src="/leekangjo/img/Logo4_warning.png" alt="" class="loginImg" onclick="location.href='/leekangjo/index.jsp'">
					<h2>잘못된 접근입니다.</h2>
				</div>
			</div>
		</form>
	<%
		}
			// 파라미터를 통해 넘어온 이메일값이 존재한다면...
			else
			{
		// 클래스에 지정한 함수를 사용하기 위한 객체 선언
		SignUp_mail signup_mailchk = new SignUp_mail();
			
		// 클래스에 지정한 함수를 실행시킨 결과값을 변수에 저장
		int chknum = signup_mailchk.mailSend(email);
	%>
		<script type="text/javascript">
			function signup_first_emailchk_result()
			{
				if (document.form_emailchk.emailchk.value == "" || document.form_emailchk.length < 0)
				{
					alert("인증번호를 입력 후 다시 시도해 주세요.");
					document.form_emailchk.email.focus();
				}
				else
				{
					if(<%=chknum%> == document.form_emailchk.emailchk.value)
					{
						alert("이메일 본인인증이 완료되었습니다.");
						opener.document.signup_first.emailchk.value = "email_chkyes";
						opener.document.signup_first.email.readOnly = true;
						opener.document.signup_first.email.style.color = "blue";
						opener.document.signup_first.email.style.onfocus = "this.blur();";
						window.close();
					}
					else
					{
						alert("이메일 본인인증이 실패했습니다. 다시 시도해 주세요.");
					}
				}
			}
		</script>
    	<div id="box">
			<fieldset>
	            <img src="/leekangjo/img/Logo4.png" alt="" class="loginImg">
            	<h2>이메일 인증</h2>
				<form name="form_emailchk" action="signup_emailchk.jsp" method="post" class="formD">
					<input type="text" class="emailchk" name="emailchk" maxlength="5" placeholder="* 인증번호" >
            		<button type="button" class="tagbarBT" onclick="signup_first_emailchk_result()">본인인증</button>
				</form>
			</fieldset>
    	</div>
    <%}%>
	</body>
</html>
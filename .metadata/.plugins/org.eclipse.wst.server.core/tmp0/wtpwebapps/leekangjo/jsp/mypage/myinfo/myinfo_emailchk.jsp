<!-- 
마이페이지 > 나의 정보 > 이메일 본인인증 화면입니다.
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
	String email = request.getParameter("user_email");
	
	// 클래스에 지정한 함수를 사용하기 위한 객체 선언
	SignUp_mail signup_mailchk = new SignUp_mail();
	
	// 클래스에 지정한 함수를 실행시킨 결과값을 변수에 저장
	int chknum = signup_mailchk.mailSend(email);
%>
	<script type="text/javascript">
		function mypage_emailchk()
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
					alert("이메일 주소 변경사항이 발생했습니다. '나의 정보 → 저장' 버튼을 눌러 변경사항을 저장해 주세요. '저장' 버튼을 누르지 않을 경우 저장되지 않습니다.");
					opener.document.myinfo.emailchk.value = "email_chkyes";
					opener.document.myinfo.isEmailChange.value = "yes";
					opener.document.myinfo.user_email.value = "<%=email%>";
					opener.document.myinfo.user_email.readOnly = true;
					opener.document.myinfo.user_email.style.color = "blue";
					opener.document.myinfo.user_email.style.onfocus = "this.blur();";
					opener.document.myinfo.email_change.disabled = "disabled";
					opener.document.myinfo.email_change.style.backgroundColor = "#DDDDDD";
					opener.document.myinfo.email_change.innerText = "이메일 변경완료";
					opener.document.myinfo.email_change.style.color = "blue";
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
			<form name="form_emailchk" method="post" class="formD">
				<input type="text" class="emailchk" name="emailchk" maxlength="5" placeholder="* 인증번호" >
	            <button type="button" class="tagbarBT" onclick="mypage_emailchk()">본인인증</button>
			</form>
		</fieldset>
    </div>
</body>
</html>
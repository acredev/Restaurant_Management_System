<!-- 
마이페이지 > 나의 정보 > 이메일 변경 화면입니다.
 -->

<%@page import="leekangjo.SignUp_mail" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width-device-width,initial-scale-1.0,user-scalable=no">
	<title>LEEKANGJO - 이메일 변경</title>
	<link href="/leekangjo/css/Header.css" rel="stylesheet" type="text/css">
    <link href="/leekangjo/css/signup_style.css" rel="stylesheet" type="text/css">
    <link href="/leekangjo/css/signup_first.css" rel="stylesheet">
    <link href="/leekangjo/css/buttonST.css" rel="stylesheet">
    <link rel="icon" href="/leekangjo/img/favicon1.png" type="image/x-icon" sizes="16x16">
    <script src="/leekangjo/js/signup.js"></script>
</head>
<body style="overflow-x:hidden;overflow-y:hidden">
    <div id="box">
		<fieldset>
    		<img src="/leekangjo/img/Logo4.png" alt="" class="loginImg">
        	<h2>이메일 변경</h2>
			<form action="myinfo_emailchk.jsp" method="post" name="form_emailchange" class="formD">
				<input type="text" class="emailchk" name="user_email" maxlength="30" placeholder="* 변경할 이메일을 입력해주세요." >
           		<button type="submit" class="tagbarBT">본인인증</button>
			</form>
		</fieldset>
    </div>
</body>
</html>
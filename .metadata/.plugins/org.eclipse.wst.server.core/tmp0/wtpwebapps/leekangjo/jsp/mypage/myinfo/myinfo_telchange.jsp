<!-- 
마이페이지 > 나의 정보 > 휴대폰 번호 변경 화면입니다.
 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width-device-width,initial-scale-1.0,user-scalable=no">
	<title>LEEKANGJO - 휴대폰 번호 변경</title>
	<link href="/leekangjo/css/Header.css" rel="stylesheet" type="text/css">
    <link href="/leekangjo/css/signup_style.css" rel="stylesheet" type="text/css">
    <link href="/leekangjo/css/signup_first.css" rel="stylesheet">
    <link href="/leekangjo/css/buttonST.css" rel="stylesheet">
    <link rel="icon" href="/leekangjo/img/favicon1.png" type="image/x-icon" sizes="16x16">
    <script src="/leekangjo/js/mypage.js"></script>
</head>
<body style="overflow-x:hidden;overflow-y:hidden">
    <div id="box">
		<fieldset>
            <img src="/leekangjo/img/Logo4.png" alt="" class="loginImg">
            <h2>휴대폰 번호 변경</h2>
			<form action="myinfo_telchk.jsp" method="post" name="form_telchange" class="formD">
				<input type="number" class="emailchk" id="user_tel" name="user_tel" maxlength="11" placeholder="* 변경할 휴대폰 번호를 입력해주세요." >
            	<button type="button" class="tagbarBT" onclick="myinfo_telchk()">본인인증</button>
			</form>
		</fieldset>
    </div>
</body>
</html>
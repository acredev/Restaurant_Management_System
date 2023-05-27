<!-- 
아이디 찾기 화면입니다.
 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width-device-width,initial-scale-1.0,user-scalable=no">
		<title>LEEKANGJO - 아이디 찾기</title>
		<script src="/leekangjo/js/FindJS.js"></script>
		<link href="/leekangjo/css/LoginMain.css" rel="stylesheet" type="text/css">
		<link href="/leekangjo/css/buttonST.css" rel="stylesheet" type="text/css">
		<link rel="icon" href="/leekangjo/img/favicon1.png" type="image/x-icon" sizes="16x16">
	</head>
	<body>
		<form name="find_id_first" action="find_id_second.jsp" method="post">
			<div class="outBox">
    			<div class="boxtitle">
        			<img src="../../img/Logo4.png" alt="" class="loginImg" onclick="location.href='/leekangjo/index.jsp'">
        			<h1>ID 찾기</h1>
    			</div>
        		<div class="inputBox">
	        		<input type="number" id="tell" name="tel" oninput="maxLengthCheck(this)" maxlength="11" placeholder="* 휴대폰 번호 (- 없이 입력하세요.)">
    			</div>
    			<button type="button" onclick="find_id_first_check()" class="tagbarBT">인증번호 전송</button>
			</div>
		</form>
	</body>
</html>
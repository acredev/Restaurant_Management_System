<!-- 
비밀번호 찾기 화면입니다.
 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width-device-width,initial-scale-1.0,user-scalable=no">
		<title>비밀번호 찾기</title>
		<!-- 페이지 디자인을 위한 CSS 선언 -->
		<link href="css/Header.css" rel="stylesheet" type="text/css">
        <link href="css/LoginMain.css" rel="stylesheet" type="text/css">
	</head>
<body>
	<form>
		<header>
			<img src="img/Logo4.png" class="Logoimg" onclick="location.href='index.html'">
			<h1 onclick="location.href='login.html'">Login</h1>
		</header>
		<div id="Loginmain">
			<div class="box">
				<h1 class="logo">LEEKANGJO</h1>
				<h2>비밀번호 찾기</h2>
				<div class="input_box">
					<h3>아이디</h3>
					<input type="text" placeholder=" *아이디" id="name" class="account" maxlength="10">
					<h3>이름</h3>
					<input type="text" placeholder=" *이름" id="name" class="account" maxlength="5">
					<h3>전화번호</h3>
					<input type="text" placeholder=" *전화번호" id="tel" class="account" maxlength="11">
					<button class="btn_find_id" id="btnSend">
						<span class="">PW 초기화</span>
					</button>
				</div>
				<a onclick="location.href='login.jsp'">로그인페이지</a>
			</div>
		</div>
	</form>
</body>
</html>
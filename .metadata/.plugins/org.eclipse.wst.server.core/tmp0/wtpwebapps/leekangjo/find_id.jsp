<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width-device-width,initial-scale-1.0,user-scalable=no">
		<title>아이디 찾기</title>
		<link href="css/Header.css" rel="stylesheet" type="text/css">
		<link href="css/LoginMain.css" rel="stylesheet" type="text/css">
		<link href="css/buttonST.css" rel="stylesheet" type="text/css">
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
				<h2>ID 찾기</h2>
				<div class="input_box">
					<h3>이름</h3>
					<input type="text" placeholder=" *이름" id="name" class="account" maxlength="5">
					<h3>학번</h3>
					<input type="text" placeholder=" *학번" id="std_id" class="account" maxlength="8">
					<button class="tagbarBT" id="btnSend">
						<span class="">ID 확인</span>
					</button>
				</div>
				<p class=login_menu>
					<a onclick="location.href='find_pw.jsp'">PW찾기</a>
					<a onclick="location.href='login.jsp'">로그인 페이지</a>
				</p>
			</div>
		</div>
		<script src="login.js"></script>
	</form>
</body>
</html>
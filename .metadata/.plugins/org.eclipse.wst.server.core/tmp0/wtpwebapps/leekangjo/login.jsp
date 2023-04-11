<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width-device-width,initial-scale-1.0,user-scalable=no">
        <title>Yummy Yummy</title>
        <link href="css/Header.css" rel="stylesheet" type="text/css">
        <link href="css/LoginMain.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <header>
            <img src="img/Logo4.png" class="Logoimg" onclick ="location.href='index.html'">
            <h1>Login</h1>
        </header>
        <div id="Loginmain">
            <div class="box">
                <h1 class="logo">LEEKANGJO</h1>
                <input type="text" placeholder=" 아이디" id="id" class="account">
                <input type="password" placeholder=" 비밀번호" id="password" class="account">
           		<button id="login" class="account">로그인</button>
           		<p id="alert" class="account"> </p>
                <a onclick ="location.href='signup.jsp'">회원가입</a>
            </div>
        </div>
        <script src="login.js"></script>
    </body>
</html>
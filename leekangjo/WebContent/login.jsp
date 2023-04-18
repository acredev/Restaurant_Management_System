<!-- 
로그인 페이지입니다.
 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width-device-width,initial-scale-1.0,user-scalable=no">
        <title>로그인</title>
        <!-- 페이지 디자인을 위한 CSS 선언 -->
        <link href="css/Header.css" rel="stylesheet" type="text/css">
        <link href="css/LoginMain.css" rel="stylesheet" type="text/css">
    </head>
    <body>
    	<form name="login" action="login_send.jsp" method="post">
        	<header>
            	<img src="img/Logo4.png" class="Logoimg" onclick ="location.href='index.html'">
            	<h1 onclick="location.href='login.jsp'">Login</h1>
        	</header>
        	<div id="Loginmain">
            	<div class="box">
                	<h1 class="logo">LEEKANGJO</h1>
                	<input type="text" placeholder=" 아이디" id="id" class="account" name="id">
                	<input type="password" placeholder=" 비밀번호" id="password" class="account" name="pwd">
           			<button type="submit" id="Blogin" class="btn_login">로그인</button>
           			<p id="alert" class="account"></p>
           			<p class=login_menu>
           				<a onclick="location.href='find_id.jsp'">ID찾기</a>
           				<a onclick="location.href='find_pwd.jsp'">PW찾기</a>
                		<a onclick="location.href='signup.jsp'">회원가입</a>
            	</div>
        	</div>
        </form>
    </body>
</html>
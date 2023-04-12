<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width-device-width,initial-scale-1.0,user-scalable=no">
        <title>Yummy Yummy</title>
        <link href="css/Header.css" rel="stylesheet" type="text/css">
        <link href="css/signup_style.css" rel="stylesheet" type="text/css">
    </head>
    <body>
    	<form name="signup" action="signup_send.jsp" method="post">
 	       <header>
 	           <img src="img/Logo4.png" class="Logoimg" onclick ="location.href='index.html'">
	           <h1 onclick ="location.href='Login.html'">Login</h1>
   		   </header>
   		   <div id="Loginmain">
   		   <div class="box">
			<h1 class="logo">회원가입</h1>
                <input type="text" placeholder=" *아이디" id="id" class="account" name="id"> 
                <p>※아이디는 10자까지 작성가능.</p>
                <input type="password" placeholder=" *비밀번호" id="pwd" class="account" name="pwd">
                <p> 비밀번호는 16자까지 작성가능.</p>
                <input type="password" placeholder=" *비밀번호 확인" id="pwdcheck" class="account" name="pwdcheck">
                <input type="text" placeholder=" *이름" id="name" class="account" name="name">
                <input type="text" placeholder=" *학번" id="stdid" class="account" name="stdnum">
                <input type="text" placeholder=" *전화번호" id="tel" class="account" name="tel">
                <input type="text" placeholder="  이메일(선택)" id="email" class="account" name="email">
            <button type="submit" id="login" class="account">회원가입</button>
            <p id="alert" class="account"> </p> 
           </div>
           </div>
  	      <script src="login.js"></script>
        </form>
    </body>
</html>
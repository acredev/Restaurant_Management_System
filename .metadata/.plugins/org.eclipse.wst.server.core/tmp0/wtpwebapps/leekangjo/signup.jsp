<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width-device-width,initial-scale-1.0,user-scalable=no">
        <title>이강조 회원가입</title>
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
		   		<h1 class="logo">LEEKANGJO</h1>
				<div>
					<h3>아이디</h3>
					<input type="text" placeholder=" *아이디" id="id" class="account" maxlength="10" name="id">
					<button class="btn_id_check" id="btnsend"><span class="">중복확인</span></button>
				</div>
					<p>※아이디는 10자까지 작성가능.</p>
				<div>
					<h3>비밀번호</h3>
					<input type="password" placeholder=" *비밀번호" id="pwd" class="account" maxlength="16" name="pwd">
					<p> 비밀번호는 16자까지 작성가능.</p>
				</div>
				<div>
					<h3>비밀번호 확인</h3>
					<input type="password" placeholder=" *비밀번호 확인" id="pwdcheck" class="account" maxlength="16" name="pwdcheck">
				</div>
				<div>
					<h3>이름</h3>
					<input type="text" placeholder=" *이름" id="name" class="account" maxlength="5" name="name">
				</div>
				<div>
					<h3>학번</h3>
					<input type="text" placeholder=" *학번" id="stdid" class="account" maxlength="8" name="stdnum">
					<button class="btn_id_check" id="btnSend"><span class="">학번 확인</span></button>
				</div>
				<div>
					<h3>전화번호</h3>
					<input type="text" placeholder=" *전화번호 ( - 없이 기입하세요.)" id="tel" class="account" maxlength="11" name="tel">
					<button class="tel_check" id="btnSend"><span class="">SMS 인증</span></button>
				</div>
				<div>
					<h3>이메일 주소</h3>
					<input type="text" placeholder="  이메일(선택)" id="email" class="account" maxlength="30" name="email">
				</div>
				<div>
				<label><input type="checkbox" name="agree" value=""> *개인정보 활용 및 회원가입 동의 (필수)</label>
				<button type="submit" id="login" class="account">회원가입</button>
				<p id="alert" class="account"> </p> 
				</div>
           </div>
           </div>
  	      <script src="login.js"></script>
        </form>
    </body>
</html>
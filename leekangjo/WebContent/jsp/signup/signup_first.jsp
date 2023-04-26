<%@page import="leekangjo.signup" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <title>LEEKANGJO - 회원가입</title>
        <link href="../../css/signup_first.css" rel="stylesheet">
        <link href="../../css/buttonST.css" rel="stylesheet">
        <link rel="icon" href="../../img/favicon1.png" type="image/x-icon" sizes="16x16">
        <script src="../../js/signup.js"></script>
    </head>
    <body>
    	<form name="signup_first" action="signup_second.jsp" method="post">
        	<div id="box">
    	        <div class="boxtitle">
	                <img src="../../img/Logo4.png" alt="" class="loginImg" onclick="../../location.href='index.html'">
                	<h1>회원가입</h1>
	            </div>
            	<div class="form-item">
               		<input type="text" id="id" name="id" placeholder="* 아이디" maxlength="10">
               		<iframe id="hiddenframe" name="hiddenframe" src="signup_idchk.jsp" scroliling="yes"></iframe>
					<button type="button" class="tagbarBT" onclick="signup_first_idchk();">중복확인</button>
            	</div>
            	<div class="form-item">
					<input type="number" id="stdnum" name="stdnum" placeholder="* 학번" oninput="maxLengthCheck1(this)" maxlength="8">
					<iframe id="hiddenframe2" name="hiddenframe2" src="signup_stdnumchk.jsp" scrolling="no"></iframe>
               		<button type="button" class="tagbarBT" onclick="signup_first_stdnumchk();">학번확인</button>
            	</div>
	            <div class="form-item">
               		<input type="number" id="tel" name="tel" placeholder="* 휴대폰 번호 (- 없이 입력하세요.)" oninput="maxLengthCheck2(this)" maxlength="11">
               		<button type="button" class="tagbarBT" onclick="signup_first_telchk()">본인인증</button>
               		<div class="block"><button type="button" class="tagbarBT" id="nextBT" onclick="signup_first_nextBT();">다음</button></div>
	            </div>
	            <input type="hidden" id="telchk" name="telchk" value="tel_chkno">
        	</div>
        </form>
    </body>
</html>
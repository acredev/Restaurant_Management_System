<!-- 
마이페이지 > 나의 정보 > 비밀번호 변경 화면입니다.
 -->

<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//파라미터를 통해 받아온 아이디 값을 변수에 저장
	String user_id = request.getParameter("user_id");
	//세션에 MEMBERID 객체를 저장 (user_id 정보를 가져옴)
	session.setAttribute("MEMBERID", user_id);
	//MEMBERID 객체의 값을 memberId 문자열 변수에 저장
	String memberId = (String)session.getAttribute("MEMBERID");
	//만약, memberId 값이 null 이면 false(비로그인 상태)
	//memberId 값이 무언가 있다면 true(로그인 상태)
	boolean login = memberId == null ? false : true;
%>

<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <title>LEEKANGJO - 비밀번호 변경</title>
        <link href="/leekangjo/css/signup_second.css" rel="stylesheet">
        <link href="/leekangjo/css/buttonST.css" rel="stylesheet">
        <link rel="icon" href="/leekangjo/img/favicon1.png" type="image/x-icon" sizes="16x16">
        <script src="https://kit.fontawesome.com/fd1cbb6da4.js" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
        <script src="/leekangjo/js/mypage.js"></script>
        <script src="/leekangjo/js/pwE.js"></script>
        <script src="/leekangjo/js/LoginJS.js"></script>
    </head>	
    <body>
    	<form name="pwd_change" action="myinfo_pwdchange_send.jsp" method="post">
    		<div id="box">
    			<div class="boxtitle">
    				<img src="/leekangjo/img/Logo4.png" alt="" class="loginImg" onclick="location.href='/leekangjo/index.html'">
    				<h1>비밀번호 변경</h1>
            	</div>
            	<div class="form-item" id="EyeBox">
               		<input type="password" id="pwd" name="pwd" placeholder="* 비밀번호" onchange="myinfo_pwdchange_chk()">
                	<i class="fa-solid fa-eye"></i>
            	</div>
            	<div class="form-item" id="EyeBox">
               		<input type="password" id="pwdsame" name="pwdsame" placeholder="* 비밀번호 확인" onchange="myinfo_pwdchange_chk()">
               		<i class="fa-solid fa-eye"></i>
            	</div>
            	<div class="block">
            		<input type="text" id="pwdsame_result" value="" style="border:0 solid black" readonly>
					<button type="button" class="tagbarBT" id="change_pw" onclick="myinfo_pwdchange_finish()">비밀번호 변경</button>
            	</div>
        	</div>
        	<!-- 다음 페이지로 파라미터값을 넘기기 위한 input hidden -->
        	<input type="hidden" id="user_id" name="user_id" value="<%=user_id %>">
        	<input type="hidden" id="isPwdSame" name="isPwdSame" value="no">
    	</form>
    </body>
</html>

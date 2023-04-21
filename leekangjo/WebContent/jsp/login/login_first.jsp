<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="utf-8">
	    <title>로그인 페이지</title>
	    <link href="../../css/LoginMain.css" rel="stylesheet">
	    <link href="../../css/buttonST.css" rel="stylesheet">
	</head>
	<body>
		<form name="login_first" action="login_second.jsp" method="post">
	    	<div class="outBox">
		    	<div class="boxtitle">
	        		<img src="../../img/Logo4.png" alt="" class="loginImg" onclick="location.href='../../index.html'">
    	    		<h1>로그인</h1>
	    		</div>
    			<div class="inputBox">
		        	<input type="text" id="tell" name="id">
        			<label for="sampleId">아이디</label>
    			</div>
    			<button type="submit" class="tagbarBT">다음</button>
    			<div class="IPSBOX">
			        <a onclick="location.href='../find_id/find_id_first.jsp'">ID찾기 </a>
        			<a>|</a>
        			<a onclick="location.href='../signup/signup.jsp'">회원가입</a>
    			</div>
			</div>
		</form>
	</body>
	<script src="../../js/LoginJS.js"></script>
</html>
<!-- 
회원가입 두번째 화면입니다.
 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <title>LEEKANGJO - 회원가입</title>
        <link href="../../css/signup_second.css" rel="stylesheet">
        <link href="../../css/buttonST.css" rel="stylesheet">
        <link rel="icon" href="../../img/favicon1.png" type="image/x-icon" sizes="16x16">
        <script src="https://kit.fontawesome.com/fd1cbb6da4.js" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
        <script src="../../js/signup.js"></script>
        <script src="../../js/pwE.js"></script>
        <script src="../../js/LoginJS.js"></script>
    </head>	
    <body>
    	<form name="signup_second" action="signup_send.jsp" method="post">
    	<%
    	request.setCharacterEncoding("UTF-8");
    	
    	String id = request.getParameter("id");
    	String stdnum = request.getParameter("stdnum");
    	String tel = request.getParameter("tel");
    	String telchk = request.getParameter("telchk");
    	String email = request.getParameter("email");
    	String emailchk = request.getParameter("emailchk");
    	
    	if (telchk.equals("tel_chkyes") && emailchk.equals("email_chkyes"))
    	{%>
    		<div id="box">
    			<div class="boxtitle">
    				<img src="../../img/Logo4.png" alt="" class="loginImg" onclick="location.href='../../index.jsp'">
    				<h1>회원가입</h1>
            	</div>
            	<div class="form-item">
               		<input type="text" id="name" name="name" placeholder="* 이름">
            	</div>
            	<div class="form-item" id="EyeBox">
               		<input type="password" id="pwd" name="pwd" placeholder="* 비밀번호" onchange="signup_second_pwdchk()">
                	<i class="fa-solid fa-eye"></i>
            	</div>
            	<div class="form-item" id="EyeBox">
               		<input type="password" id="pwdsame" name="pwdsame" placeholder="* 비밀번호 확인" onchange="signup_second_pwdchk()">
               		<i class="fa-solid fa-eye"></i>
            	</div>
            	<div class="block">
					<button type="button" class="tagbarBT" id="nextBT" onclick="signup_second_sendBT();">다음</button>
            	</div>
        	</div>
        	<input type="hidden" id="id" name="id" value="<%=id %>">
        	<input type="hidden" id="stdnum" name="stdnum" value="<%=stdnum %>">
        	<input type="hidden" id="tel" name="tel" value="<%=tel %>">
        	<input type="hidden" id="isPwdSame" name="isPwdSame" value="no">
    		<%
    	}
    	else if (telchk == null || telchk.isEmpty())
    	{%>
    		<div id="box">
    			<div class="boxtitle">
    				<img src="../../img/Logo4.png" alt="" class="loginImg" onclick="location.href='../../index.jsp'">
    				<h1>잘못된 접근입니다.</h1>
            	</div>
            </div>
    		<%
    	}%>
    	</form>
    </body>
</html>

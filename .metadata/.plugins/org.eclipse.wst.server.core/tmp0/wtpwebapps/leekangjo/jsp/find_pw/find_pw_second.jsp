<!-- 
비밀번호 재설정 중간과정 (본인인증) 화면입니다.
 -->

<%@page import="java.sql.*"%>
<%@page import="leekangjo.signup" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="utf-8">
	    <title>LEEKANGJO - 비밀번호 재설정</title>
	    <link href="../../css/LoginMain.css" rel="stylesheet">
	    <link href="../../css/buttonST.css" rel="stylesheet">
	    <link rel="icon" href="../../img/favicon1.png" type="image/x-icon" sizes="16x16">
	</head>
	<body>
	<%
	request.setCharacterEncoding("UTF-8");
	
	String user_id = request.getParameter("id");
	String user_tel = request.getParameter("tel");
	%>
		<form name="find_pw_second" action="find_pw_result.jsp" method="post">
			<div class="outBox">
		    	<div class="boxtitle">
	    		    <img src="../../img/Logo4.png" alt="" class="loginImg" onclick="location.href='../../index.html'">
		        	<h1>인증번호</h1>
    			</div>
	    		<div class="inputBox">
		        	<input type="number" id="verify" name="telchk" oninput="maxLengthCheck(this)" maxlength="5" placeholder="인증번호" value="">
		        	<input type="hidden" id="id" name="id" value=<%=user_id %>>
		        	<input type="hidden" id="tel" name="tel" value=<%=user_tel %>>
    			</div>
    			<button type="submit" class="tagbarBT" onclick="result();">확인</button>
			</div>
		</form>
		<%
		signup signup_telchk = new signup();
        				
        int chknum = signup_telchk.telchk(user_tel);
		%>
		<script type="text/javascript">
			function result()
			{
				if (document.find_pw_second.telchk.value == "" || document.find_pw_second.telchk.length < 0)
				{
					alert ("인증번호가 입력되지 않았습니다. 처음부터 다시 시도해 주세요.");
					setTimeout(function() { window.location.href="login_first.jsp"}, 100);
				}
				else
				{
					if (<%=chknum%> == document.find_pw_second.telchk.value)
					{
						alert("전화번호 본인인증이 완료되었습니다.");
					}
					else
					{
						alert("전화번호 본인인증이 실패했습니다. 처음부터 다시 시도해 주세요.");
						setTimeout(function() { window.location.href="../login/login_first.jsp"}, 100);
					}
				}
			}
		</script>
	</body>
</html>
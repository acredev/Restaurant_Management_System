<!-- 
비밀번호 재설정 중간과정 (본인인증) 화면입니다.
 -->

<%@page import="java.sql.*"%>
<%@page import="leekangjo.SignUp" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="utf-8">
	    <title>LEEKANGJO - 비밀번호 재설정</title>
	    <link href="/leekangjo/css/LoginMain.css" rel="stylesheet">
	    <link href="/leekangjo/css/buttonST.css" rel="stylesheet">
	    <link rel="icon" href="/leekangjo/img/favicon1.png" type="image/x-icon" sizes="16x16">
	</head>
	<body>
		<%
			// 문자열의 인코딩 방식 설정
				request.setCharacterEncoding("UTF-8");
				
				// 파라미터를 통해 받아온 값을 변수에 저장
				String user_id = request.getParameter("id");
				String user_tel = request.getParameter("tel");
			
				// 파라미터를 통해 받아온 값들이 없다면...
				if (user_id == null || user_id.isEmpty())
				{
		%>
			<form name="find_pw_second">
				<div class="outBox">
					<div class="boxtitle">
	       				<img src="/leekangjo/img/Logo4_warning.png" alt="" class="loginImg" onclick="location.href='/leekangjo/index.jsp'">
       					<h2>잘못된 접근입니다.</h2>
    				</div>
				</div>
			</form>
		<%
			}
				// 파라미터를 통해 받아온 값들이 있다면...
				else
				{
		%>
			<form name="find_pw_second" action="find_pw_result.jsp" method="post">
				<div class="outBox">
			    	<div class="boxtitle">
	    		    	<img src="/leekangjo/img/Logo4.png" alt="" class="loginImg" onclick="location.href='/leekangjo/index.jsp'">
		        		<h1>인증번호</h1>
    				</div>
	    			<div class="inputBox">
			        	<input type="number" id="verify" name="telchk" oninput="maxLengthCheck(this)" maxlength="5" placeholder="인증번호" value="">
			        	
			        	<!-- submit을 통해 POST 방식으로 파라미터 값을 넘기기 위한 input hidden -->
		        		<input type="hidden" id="id" name="id" value=<%=user_id%>>
		        		<input type="hidden" id="tel" name="tel" value=<%=user_tel%>>
    				</div>
    				<button type="submit" class="tagbarBT" onclick="result();">확인</button>
				</div>
			</form>
			<%
				// 문자를 보내기 위한 메서드 생성
				SignUp signup_telchk = new SignUp();
			        					
				// user_tel 값을 넘기고 return된  랜덤 정수형 인증번호 값을 저장
			        	int chknum = signup_telchk.telchk(user_tel);
			%>
			<script type="text/javascript">
				function result()
				{
					// 만약... 사용자가 인증번호를 입력하지 않닸다면
					if (document.find_pw_second.telchk.value == "" || document.find_pw_second.telchk.length < 0)
					{
						alert ("인증번호가 입력되지 않았습니다. 처음부터 다시 시도해 주세요.");
						setTimeout(function() { window.location.href="login_first.jsp"}, 100);
					}
					// 사용자가 인증번호를 입력했는데,
					else
					{
						// 인증번호가 일치하다면
						if (<%=chknum%> == document.find_pw_second.telchk.value)
						{
							alert("전화번호 본인인증이 완료되었습니다.");
						}
						// 인증번호가 일치하지 않다면
						else
						{
							alert("전화번호 본인인증이 실패했습니다. 처음부터 다시 시도해 주세요.");
							setTimeout(function() { window.location.href="/leekangjo/jsp/login/login_first.jsp"}, 100);
						}
					}
				}	
			</script>
		<%
		}%>
	</body>
</html>
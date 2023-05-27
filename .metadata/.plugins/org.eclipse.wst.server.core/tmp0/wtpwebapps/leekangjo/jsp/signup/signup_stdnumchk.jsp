<!-- 
학번 중복확인을 위한 페이지입니다.
 -->

<%@page import="leekangjo.SignUp" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width-device-width,initial-scale-1.0,user-scalable=no">
		<title>LEEKANGJO - 학번 중복확인</title>
		<link href="/leekangjo/css/LoginMain.css" rel="stylesheet">
		<link href="/leekangjo/css/Header.css" rel="stylesheet" type="text/css">
        <link href="/leekangjo/css/signup_style.css" rel="stylesheet" type="text/css">
        <link rel="icon" href="/leekangjo/img/favicon1.png" type="image/x-icon" sizes="16x16">
        <script src="/leekangjo/js/signup.js"></script>
	</head>
	<body>
		<form name="signup_idchk">
			<input type="hidden" id="stdnumchk_result" name="stdnumchk_result" value="stdnum_chkno">
			<a id="result_txt"></a>
			<%
				// 받아올 문자열의 인코딩방식 설정
				request.setCharacterEncoding("UTF-8");
				// 파라미터를 통해 받아온 정보값을 변수에 저장
				String stdnum = request.getParameter("stdnum");
				
				// 받아온 학번값이 존재하지 않는다면...
				if (stdnum == null || stdnum.isEmpty())
				{
			%>
				<script type="text/javascript">
					document.getElementById("stdnumchk_result").value = "stdnum_chkno";
					document.getElementById("result_txt").innerText = ""
				</script>
				<div class="outBox">
					<div class="boxtitle">
						<img src="/leekangjo/img/Logo4_warning.png" alt="" class="loginImg" onclick="location.href='/leekangjo/index.jsp'">
						<h2>잘못된 접근입니다.</h2>
					</div>
				</div>
			<%
				}
				// 받아온 학번값이 존재한다면...
				else
				{
					// 클래스에 지정한 함수를 사용하기 위한 객체 선언
					SignUp signup_stdnumchk = new SignUp();
				
					// 클래스에서 지정한 함수를 실행시킨 값을 불러오기 위한 변수 선언
					int result = signup_stdnumchk.stdnumchk(stdnum);
					if (result == 1)
					{
			%>
					<script type="text/javascript">
						document.getElementById("stdnumchk_result").value = "stdnum_chkyes";
						document.getElementById("result_txt").innerText = "사용 가능한 학번입니다."
						document.getElementById("result_txt").style = "color:blue";
					</script>
				<%
				}
				else if (result == 0)
				{%>
					<script type="text/javascript">
						document.getElementById("stdnumchk_result").value = "stdnum_chkno";
						document.getElementById("result_txt").innerText = "사용이 불가능한 학번입니다.";
						document.getElementById("result_txt").style = "color:red";
					</script>
				<%
				}
				// 이유를 알 수 없는 오류가 발생했다면...
				else
				{%>
					<div class="outBox">
	    				<div class="boxtitle">
        					<img src="/leekangjo/img/Logo4_warning.png" alt="" class="loginImg" onclick="location.href='/leekangjo/index.jsp'">
        					<h2>오류가 발생했습니다. (오류 메시지 : -1)</h2>
	    				</div>
					</div>
				<%
				}
			}
			%>
		</form>
	</body>
</html>
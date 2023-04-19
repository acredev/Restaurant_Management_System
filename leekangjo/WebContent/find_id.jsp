<!-- 
아이디 찾기 화면입니다.
 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width-device-width,initial-scale-1.0,user-scalable=no">
		<title>아이디 찾기</title>
		<!-- 페이지 디자인을 위한 CSS 선언 -->
		<link href="css/Header.css" rel="stylesheet" type="text/css">
		<link href="css/LoginMain.css" rel="stylesheet" type="text/css">
		<link href="css/buttonST.css" rel="stylesheet" type="text/css">
		<script type="text/javascript">
			function telchk()
			{
				if (document.find_id.tel.value == "" || document.find_id.tel.length < 0)
				{
					alert("전화번호 입력 후 다시 시도해 주세요.");
					document.find_id.tel.focus();
				}
				else
				{
					window.open("find_id_telchk.jsp?tel=" + document.find_id.tel.value, "", "width=500, height=300");
				}
				//window.open("find_id_telchk.jsp?tel=" + document.find_id.tel.value, "", "width=500, height=300");
			}
			function findid()
			{
				window.open("find_id_result.jsp?stdnum=" + document.find_id.stdnum.value, "", "width=500. height=300");
			}
		</script>
	</head>
<body>
	<form name="find_id" action="find_id_result.jsp" method="post">
		<header>
			<img src="img/Logo4.png" class="Logoimg" onclick="location.href='index.html'">
			<h1 onclick="location.href='login.jsp'">Login</h1>
		</header>
		<div id="Loginmain">
			<div class="box">
				<h1 class="logo">LEEKANGJO</h1>
				<h2>ID 찾기</h2>
				<div class="input_box">
					<h3>이름</h3>
					<input type="text" placeholder=" *이름" id="name" class="account" maxlength="5">
					<h3>학번</h3>
					<input type="text" placeholder=" *학번" id="stdnum" class="account" maxlength="8">
					<h3>본인인증</h3>
					<input type="text" placeholder=" *전화번호" id="tel" class="account" maxlength="11">
					<input type="button" id="tel_check" onclick="telchk()" class="account" value="본인인증">
					<input type="button" onclick="findid()" class="tagbarBT" id="btnSend" value="ID 찾기">
				</div>
				<p class=login_menu>
					<a onclick="location.href='find_pw.jsp'">PW찾기</a>
					<a onclick="location.href='login.jsp'">로그인 페이지</a>
				</p>
			</div>
		</div>
	</form>
</body>
</html>
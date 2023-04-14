<%@ page import="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
try
{
	// JDBC 드라이버 연결
	Class.forName("com.mysql.jdbc.Driver");
	String db_address = "jdbc:mysql://127.0.0.1:3306/kyungmin_store";
	String db_username = "root";
	String db_pwd = "root";
	Connection connection = DriverManager.getConnection(db_address, db_username, db_pwd);
	
	// 문자열의 인코딩 방식 설정
	request.setCharacterEncoding("UTF-8");
}
catch (Exception ex)
{
	out.println("페이지 처리 중, 오류가 발생했습니다. 아래의 오류 메시지를 참고하여 페이지 관리자에게 문의 바랍니다. 불편을 드려 죄송합니다.\n" + ex.getMessage());
}
%>
<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width-device-width,initial-scale-1.0,user-scalable=no">
        <title>아이디 중복확인</title>
        <link href="css/Header.css" rel="stylesheet" type="text/css">
        <link href="css/signup_style.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		<form name="idcheck">
			<header>
				<img src="img/Logo4.png" class="Logoimg" onclick="location.href='index.html'">
				<h1>Login</h1>
			</header>
			<div id="Loginmain">
			<div class="box">
				<h1 class="logo">LEEKANGJO</h1>
					<div>
						<h3>아이디 중복확인</h3>
						<script type="text/javascript">
							function idChkValue()
							{
								document.getElementById("idCheck").value = opener.document.signup.id.value;
							}
						</script>
						<input type="text" name="idCheck" id="idCheck" value="">
					</div>
			</div>
			</div>
		</form>
	</body>
</html>
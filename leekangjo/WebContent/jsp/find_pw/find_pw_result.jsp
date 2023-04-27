<%@page import="java.sql.*" %>
<%@page import="leekangjo.signup" %>
<%@page import="leekangjo.randomPwd" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width-device-width,initial-scale-1.0,user-scalable=no">
		<title>LEEKANGJO - 비밀번호 재설정</title>
		<link href="../../css/LoginMain.css" rel="stylesheet">
	    <link href="../../css/buttonST.css" rel="stylesheet">
	    <link rel="icon" href="../../img/favicon1.png" type="image/x-icon" sizes="16x16">
	</head>
	<body>
		<%
		try
		{
			//JDBC 드라이버 연결
				Class.forName("com.mysql.jdbc.Driver");
			String db_address = "jdbc:mysql://127.0.0.1:3306/kyungmin_store";
			String db_username = "root";
			String db_pwd = "root";
			Connection connection = DriverManager.getConnection(db_address, db_username, db_pwd);
			
			// 문자열의 인코딩 방식 설정
			request.setCharacterEncoding("UTF-8");
			
			// 파라미터를 통해 받아온 값을 변수에 저장
			String user_id = request.getParameter("id");
			String user_tel = request.getParameter("tel");
			// String user_id = "test";

			randomPwd randomPwd = new randomPwd();
			
			String randomPwd_create = randomPwd.sendSMS(user_tel);
			// String randomPwd_create = "jspTest222";
			
			// MySQL로 전송하기 위한 문자열 insertQuery 변수 선언
			String insertQuery = "UPDATE kyungmin_store.member SET pwd='" + randomPwd_create + "' WHERE id = '" + user_id + "';";
			
			// SQL 쿼리문을 실행 (MySQL로 전송)하기 위한 객체 선언
			PreparedStatement psmt = connection.prepareStatement(insertQuery);
			
			// 쿼리문을 전송해 받아온 정보를 result 객체에 저장
			int result = psmt.executeUpdate(insertQuery);
			
			System.out.println("=============================");
			System.out.println("회원아이디 : " + user_id);
			System.out.println("회원전번 : " + user_tel);
			System.out.println("임시비번 : " + randomPwd_create);
			System.out.println("결과값 : " + result);
			if (result == 1)
			{
				%>
				<form name="find_pw_result" action="find_pw_result.jsp" method="post">
					<div class="outBox">
	    				<div class="boxtitle">
        					<img src="../../img/Logo4.png" alt="" class="loginImg" onclick="location.href='../../index.html'">
        					<h1>비밀번호 재설정 결과</h1>
    					</div>
						<div id="prBox" class="inputBox">
							<h3>임시 비밀번호 발급이 완료되어 문자 메시지로 발송이 완료되었습니다.</h3>
        					<h4>임시 비밀번호로 로그인 후, 마이 페이지에서 비밀번호 변경 바랍니다.</h4>
		    			</div>
					</div>
				</form>
			<%
			}
			else
			{%>
				<script type="text/javascript">
				(function()
				{
					alert("오류가 발생했습니다. 처음부터 다시 시도해 주세요.");
					setTimeout(function() { window.loaction.href="../login/login_first.jsp"}, 100)();
				})();
				</script>
			<%
			}
		}
		catch (Exception ex)
		{
			out.print("오류가 발생했습니다. 오류 메시지 : " + ex.getMessage());
		}
		%>
	</body>
</html>
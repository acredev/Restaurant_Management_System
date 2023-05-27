<!-- 
비밀번호 재설정 결과 화면입니다.
 -->

<%@page import="java.sql.*" %>
<%@page import="leekangjo.SignUp" %>
<%@page import="leekangjo.RandomPwd" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width-device-width,initial-scale-1.0,user-scalable=no">
		<title>LEEKANGJO - 비밀번호 재설정</title>
		<link href="/leekangjo/css/LoginMain.css" rel="stylesheet">
	    <link href="/leekangjo/css/buttonST.css" rel="stylesheet">
	    <link rel="icon" href="/leekangjo/img/favicon1.png" type="image/x-icon" sizes="16x16">
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

			// 파라미터를 통해 받아온 값들이 없다면...
			if (user_id == null || user_id.isEmpty())
			{
		%>
				<form name="find_pw_result">
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
					// 랜덤 문자열 비밀번호 생성을 위한 메서드 생성
					RandomPwd randomPwd = new RandomPwd();
				
					// user_tel 값을 넘기고 return된  랜덤 문자열 비밀번호 값을 저장
					String randomPwd_create = randomPwd.sendSMS(user_tel);
				
					// MySQL로 전송하기 위한 문자열 insertQuery 변수 선언
					String insertQuery = "UPDATE kyungmin_store.member SET pwd='" + randomPwd_create + "' WHERE id = '" + user_id + "';";
				
					// SQL 쿼리문을 실행 (MySQL로 전송)하기 위한 객체 선언
					PreparedStatement psmt = connection.prepareStatement(insertQuery);
					
					// 쿼리문을 전송해 받아온 정보를 정수형 result 변수에 저장
					int result = psmt.executeUpdate(insertQuery);
				
					// 쿼리문을 통해 정상적으로 비밀번호 정보가 업데이트 되었다면...
					if (result == 1)
					{
			%>
					<form name="find_pw_result" action="find_pw_result.jsp" method="post">
						<div class="outBox">
	    					<div class="boxtitle">
	        					<img src="/leekangjo/img/Logo4.png" alt="" class="loginImg" onclick="location.href='/leekangjo/index.html'">
        						<h1>비밀번호 재설정 결과</h1>
    						</div>
							<div id="prBox" class="inputBox">
								<h3>임시 비밀번호 발급이 완료되어 문자 메시지로 발송이 완료되었습니다.</h3>
        						<h4>임시 비밀번호로 로그인 후, 마이 페이지에서 비밀번호 변경 바랍니다.</h4>
        						<h5 onclick ="location.href='/leekangjo/jsp/login/login_first.jsp'">- 로그인페이지로 -</h5>
		    				</div>
						</div>
					</form>
				<%
				}
				// 쿼리문을 통해 비밀번호 정보 업데이트에 실패했다면...
				else
				{%>
					<script type="text/javascript">
						function()
						{
							alert("오류가 발생했습니다. 처음부터 다시 시도해 주세요.");
							setTimeout(function() { window.loaction.href="/leekangjo/jsp/login/login_first.jsp"}, 100)();
						}
					</script>
				<%
				}
			}
		}
		// DB연결 오류가 발생했다면...
		catch (Exception ex)
		{%>
			<form name="find_pw_result">
				<div class="outBox">
	    			<div class="boxtitle">
        				<img src="/leekangjo/img/Logo4_warning.png" alt="" class="loginImg" onclick="location.href='/leekangjo/index.jsp'">
        				<h2>오류가 발생했습니다.</h2>
        				<h3>오류 메시지 : <%=ex.getMessage() %></h3>
    				</div>
				</div>
			</form>
		<%
		}%>
	</body>
</html>
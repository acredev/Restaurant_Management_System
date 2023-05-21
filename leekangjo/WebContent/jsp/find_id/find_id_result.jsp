<!-- 
아이디 찾기 결과 화면입니다.
 -->

<%@page import="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width-device-width,initial-scale-1.0,user-scalable=no">
		<title>LEEKANGJO - 아이디 찾기</title>
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
			String user_tel = request.getParameter("tel");
			
			// MySQL로 전송하기 위한 문자열 insertQuery 변수 선언
			String insertQuery = "SELECT id from kyungmin_store.member where tel=?;";
			
			// SQL 쿼리문을 실행 (MySQL로 전송)하기 위한 객체 선언
			PreparedStatement psmt = connection.prepareStatement(insertQuery);
			
			// 앞서 문자열 쿼리문을 선언했던 VALUES의 ? 값에 하나씩 삽입하여 전송
			psmt.setString(1, user_tel);
			
			// 쿼리문을 전송해 받아온 정보를 result 객체에 저장
			ResultSet result = psmt.executeQuery();
			
			// DB에서 받아온 정보가 있다면...
			if (result.next() == true)
			{%>
			<form name="find_id_result" action="find_id_result.jsp" method="post">
				<div class="outBox">
	    			<div class="boxtitle">
        				<img src="../../img/Logo4.png" alt="" class="loginImg" onclick="location.href='../../index.jsp'">
        				<h1>아이디 찾기 결과</h1>
    				</div>
					<div id="LrBOX" class="inputBox">
						<h3>요청하신 아이디는 아래와 같습니다.</h3>
        				<h4><%=result.getString("id") %></h4>
        				<h5 onclick ="location.href='../login/login_first.jsp'">- 로그인페이지로 -</h5>
		    		</div>
				</div>
			</form>
			<%
			}
			// DB에서 받아온 정보가 없다면...
			else
			{%>
				<form name="find_id_result" action="find_id_result.jsp" method="post">
					<div class="outBox">
		    			<div class="boxtitle">
    	    				<img src="../../img/Logo4_warning.png" alt="" class="loginImg" onclick="location.href='../../index.jsp'">
        					<h2>잘못된 접근입니다.</h2>
    					</div>
					</div>
				</form>
			<%
			}
		}
		// DB연결 오류가 발생했다면...
		catch (Exception ex)
		{%>
			<form name="find_id_result" action="find_id_result.jsp" method="post">
				<div class="outBox">
	    			<div class="boxtitle">
        				<img src="../../img/Logo4_warning.png" alt="" class="loginImg" onclick="location.href='../../index.jsp'">
        				<h2>오류가 발생했습니다.</h2>
        				<h3>오류 메시지 : <%=ex.getMessage() %></h3>
    				</div>
				</div>
			</form>
		<%
		}
		%>
	</body>
</html>
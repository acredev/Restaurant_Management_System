<!-- 
사용자가 입력한 신규 회원가입 정보를 DB로 전송하기 위한 페이지입니다.
 -->

<%@page import="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <title>LEEKANGJO - 회원가입</title>
        <link href="/leekangjo/css/LoginMain.css" rel="stylesheet">
        <link href="/leekangjo/css/signup_second.css" rel="stylesheet">
        <link href="/leekangjo/css/buttonST.css" rel="stylesheet">
        <link rel="icon" href="/leekangjo/img/favicon1.png" type="image/x-icon" sizes="16x16">
        <script src="/leekangjo/js/signup.js"></script>
        <script src="/leekangjo/js/pwE.js"></script>
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
	
		// 파라미터를 통해 넘어온 회원가입 회원정보값 수령하여 문자열 변수에 저장
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String name= request.getParameter("name");
		String stdnum = request.getParameter("stdnum");
		String tel = request.getParameter("tel");
		String email = request.getParameter("email");
	
		// 받아온 아이디값이 존재하지 않는다면...
		if (id == null || id.isEmpty())
		{%>
			<div class="outBox">
				<div class="boxtitle">
					<img src="/leekangjo/img/Logo4_warning.png" alt="" class="loginImg" onclick="location.href='/leekangjo/index.jsp'">
					<h2>잘못된 접근입니다.</h2>
				</div>
			</div>
		<%
		}	
		// 받아온 학번값이 존재하지 않는다면...
		else if (stdnum == null || stdnum.isEmpty())
		{%>
			<div id="box">
				<div class="boxtitle">
					<img src="/leekangjo/img/Logo4.png" alt="" class="loginImg" onclick="location.href='/leekangjo/index.jsp'">
					<h1>비정상적인 접근입니다.</h1>
    	    	</div>
	        </div>
		<%
		}
		// 받아온 값들이 정상적으로 존재한다면...
		else
		{
			// MySQL로 전송하기 위한 쿼리문인 문자열 insertQuery 변수 선언
			String insertQuery = "INSERT INTO `member` VALUES (?, ?, ?, ?, ?, ?, ?)";
			String memStatus = "예약 가능";
		
			// SQL 쿼리문을 실행 (MySQL로 전송)하기 위한 객체 선언
			PreparedStatement psmt = connection.prepareStatement(insertQuery);
	
			// 앞서 문자열 쿼리문을 선언했던 VALUES의 ? 값에 하나씩 삽입하여 전송
			psmt.setString(1, stdnum);
			psmt.setString(2, name);
			psmt.setString(3, id);
			psmt.setString(4, pwd);
			psmt.setString(5, tel);
			psmt.setString(6, email);
			psmt.setString(7, memStatus);
		
			// INSERT하여  반영된 레코드의 건수결과를 반환
			psmt.executeUpdate();
			
			// 모두 완료되면, login.jsp 페이지로 리다이렉트
			response.sendRedirect("/leekangjo/jsp/login/login_first.jsp");
		}
	}
	// DB연결 오류가 발생했다면...
	catch (Exception ex)
	{%>
		<div id="box">
    		<div class="boxtitle">
    			<img src="/leekangjo/img/Logo4.png" alt="" class="loginImg" onclick="location.href='/leekangjo/index.jsp'">
    			<h1><%=ex.getMessage() %></h1>
            </div>
        </div>
	<%
	}%>
	</body>
</html>
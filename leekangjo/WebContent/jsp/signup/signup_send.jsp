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
        <link href="../../css/signup_second.css" rel="stylesheet">
        <link href="../../css/buttonST.css" rel="stylesheet">
        <link rel="icon" href="../../img/favicon1.png" type="image/x-icon" sizes="16x16">
        <script src="../../js/signup.js"></script>
        <script src="../../js/pwE.js"></script>
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
	
		if (id == null || id.isEmpty())
		{%>
		<div id="box">
			<div class="boxtitle">
				<img src="../../img/Logo4.png" alt="" class="loginImg" onclick="location.href='../../index.html'">
				<h1>비정상적인 접근입니다.</h1>
        	</div>
        </div>
		<%
		}	
		else if (stdnum == null || stdnum.isEmpty())
		{%>
			<div id="box">
				<div class="boxtitle">
					<img src="../../img/Logo4.png" alt="" class="loginImg" onclick="location.href='../../index.html'">
					<h1>비정상적인 접근입니다.</h1>
    	    	</div>
	        </div>
		<%
		}
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
			response.sendRedirect("../login/login_first.jsp");
		}
	}
	catch (Exception ex)
	{%>
		<div id="box">
    		<div class="boxtitle">
    			<img src="../../img/Logo4.png" alt="" class="loginImg" onclick="location.href='../../index.html'">
    			<h1>잘못된 접근입니다.</h1>
            </div>
        </div>
	<%
	}%>
	</body>
</html>
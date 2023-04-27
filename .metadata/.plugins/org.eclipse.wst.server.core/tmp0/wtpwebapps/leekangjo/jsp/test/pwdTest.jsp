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
		<title>비밀번호 찾기</title>
		<link href="../../css/LoginMain.css" rel="stylesheet">
	    <link href="../../css/buttonST.css" rel="stylesheet">
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

			randomPwd randomPwd = new randomPwd();
			
			String randomPwd_create = randomPwd.sendSMS(user_tel);
			
			// MySQL로 전송하기 위한 문자열 insertQuery 변수 선언
			String insertQuery = "UPDATE kyungmin_store.member SET pwd='jsptest' where id='test';";
			
			// SQL 쿼리문을 실행 (MySQL로 전송)하기 위한 객체 선언
			PreparedStatement psmt = connection.prepareStatement(insertQuery);
			
			// 쿼리문을 전송해 받아온 정보를 result 객체에 저장
			int result = psmt.executeUpdate(insertQuery);
			
			System.out.print(result);
		}
		catch (Exception ex)
		{
			out.print("오류가 발생했습니다. 오류 메시지 : " + ex.getMessage());
		}
		%>
	</body>
</html>
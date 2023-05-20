<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="utf-8">
	    <title>LEEKANGJO - 보안인증</title>
	    <link href="../../css/mypage.css" rel="stylesheet">
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
	}
	catch (Exception ex)
	{
		
	}
	%>
		<form name="login_first" class="login_first" action="login_second.jsp" method="post">
	    	<div class="outBox">
		    	<div class="boxtitle">
	        		<img src="../../img/Logo4.png" alt="" class="loginImg" onclick="location.href='../../index.html'">
    	    		<h1>마이페이지</h1>
	    		</div>
                <div class="veri_form-item">
               		<input type="password" id="pwd" class="my_pwd" name="pwd" placeholder="* 비밀번호를 입력해주세요." >
                    <hr>
            	</div>
                <button type="button" id="goto_myinfo" class="tagbarBT " onclick="alert('민혁선배. 잠깐만 이리 와주세요.')">확인</button>
			</div>
		</form>
	</body>
</html>
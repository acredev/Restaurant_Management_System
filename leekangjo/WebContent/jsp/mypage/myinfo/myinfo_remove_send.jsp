<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	//파라미터를 통해 받아온 아이디 값을 변수에 저장
	String user_id = request.getParameter("user_id");
	//세션에 MEMBERID 객체를 저장 (user_id 정보를 가져옴)
	session.setAttribute("MEMBERID", user_id);
	//MEMBERID 객체의 값을 memberId 문자열 변수에 저장
	String memberId = (String)session.getAttribute("MEMBERID");
	//만약, memberId 값이 null 이면 false(비로그인 상태)
	//memberId 값이 무언가 있다면 true(로그인 상태)
	boolean login = memberId == null ? false : true;
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width-device-width,initial-scale-1.0,user-scalable=no">
		<title>LEEKANGJO - 휴대폰 번호 본인 인증</title>
		<link href="../../../css/Header.css" rel="stylesheet" type="text/css">
    	<link href="../../../css/signup_style.css" rel="stylesheet" type="text/css">
    	<link href="../../../css/signup_first.css" rel="stylesheet">
    	<link href="../../../css/buttonST.css" rel="stylesheet">
    	<link href="../../../css/LoginMain.css" rel="stylesheet">
    	<link rel="icon" href="../../../img/favicon1.png" type="image/x-icon" sizes="16x16">
    	<script src="../../../js/signup.js"></script>
	</head>
	<body>
	<form name="myinfo_remoe_send">
		<%
		// 로그인 상태라면...
		if (login)
		{
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
            
            	// MySQL로 전송하기 위한 insertQuery 변수 선언
            	String insertQuery = "DELETE FROM kyungmin_store.member WHERE id = ?";
            
	            // Query문을 실행하기 위한 객체 선언
            	PreparedStatement psmt = connection.prepareStatement(insertQuery);
            
            	// ? 값에 하나씩 삽입하여 전송
            	psmt.setString (1, user_id);
            
            	// 결과값 받아오기
	            psmt.executeUpdate();%>
            
            	<script type="text/javascript">
            		(function(){
            			close();
	            		document.myinfo.close();
            			document.myinfo_remove_chk.close();
            		})
            	</script>
            	<%
        	}
        	catch (Exception ex)
			{%>
	        	<div id="box">
            		<div class="outBox">
						<div class="boxtitle">
        					<img src="../../../img/Logo4_warning.png" alt="" class="loginImg" onclick="location.href='../../../index.jsp'">
		       				<h2>오류가 발생했습니다.</a>
		       				<h3><%=ex.getMessage() %></h3>
    					</div>
					</div>
            	</div>
        <%
			}
		}
		else
		{%>
			<div id="box">
            	<div class="outBox">
					<div class="boxtitle">
        				<img src="../../../img/Logo4_warning.png" alt="" class="loginImg" onclick="location.href='../../../index.jsp'">
		       			<h2>잘못된 접근입니다.</h2>
    				</div>
				</div>
        	</div>
		<%
		}%>
		</form>
	</body>
</html>
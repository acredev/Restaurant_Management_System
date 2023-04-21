<!-- 
로그인 (비밀번호) 화면입니다.
 -->

<%@page import="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
	    <meta charset="utf-8">
	    <title>로그인페이지</title>
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
        			
        // MySQL로 전송하기 위한 문자열 insertQuery 변수 선언
        String insertQuery = "SELECT id from kyungmin_store.member where id=?;";
        			
        // SQL 쿼리문을 실행 (MySQL로 전송)하기 위한 객체 선언
        PreparedStatement psmt = connection.prepareStatement(insertQuery);
        			
        // 앞서 문자열 쿼리문을 선언했던 VALUES의 ? 값에 하나씩 삽입하여 전송
        psmt.setString(1, user_id);
        			
        ResultSet result = psmt.executeQuery();
        			
		if (result.next() == true)
		{%>
			<form name="login_second" action="../test/test(login_ok).jsp" method="post">
        		<div class="outBox">
				<div class="boxtitle">
        			<img src="../../img/Logo4.png" alt="" class="loginImg" onclick="location.href='../../index.html'">
        			<h1>로그인</h1>
    			</div>
    			<div class="inputBox">
    				<input type="hidden" id="id" name="id" value="<%=result.getString("id") %>">
	        		<input type="text" id="tell" name="pwd">
        			<label for="sampleId">패스워드</label>
    			</div>
    			<button type="button" onclick="login_second_check()" class="tagbarBT">다음</button>
    			<div class="IPSBOX">
	    	  	  	<a onclick="location.href='../find_pw/find_pw_first.jsp?userid=' + document.login_second.id.value">PW재설정</a>
    			</div>
			</div>
		</form>
		<%
		}
		else
		{%>
			<script>
				alert("존재하지 않는 아이디입니다. 다시 시도해 주세요.");
				setTimeout(function(){ window.location.href="login_first.jsp"}, 100);
			</script>
		<%
        }
	}
	catch (Exception ex)
    {
		out.println("오류가 발생했습니다. 오류 메시지 : " + ex.getMessage());
    }%>
	</body>
	<script src="../../js/LoginJS.js"></script>
</html>
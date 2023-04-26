<!-- 
아이디 찾기 중간 진행과정 (사용자 인증) 화면입니다.
 -->

<%@page import="java.sql.*"%>
<%@page import="leekangjo.signup" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="utf-8">
	    <title>LEEKANGJO - 아이디 찾기</title>
	    <link href="../../css/LoginMain.css" rel="stylesheet">
	    <link href="../../css/buttonST.css" rel="stylesheet">
	    <link rel="icon" href="../../img/favicon1.png" type="image/x-icon" sizes="16x16">
	    <script src="../../js/FindJS.js"></script>
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
		String insertQuery = "SELECT tel from kyungmin_store.member where tel=?;";
		
		// SQL 쿼리문을 실행 (MySQL로 전송)하기 위한 객체 선언
		PreparedStatement psmt = connection.prepareStatement(insertQuery);
		
		// 앞서 문자열 쿼리문을 선언했던 VALUES의 ? 값에 하나씩 삽입하여 전송
		psmt.setString(1, user_tel);
		
		ResultSet result = psmt.executeQuery();
		
		if (result.next() == true)
		{
		%>
		<form name="find_id_second" action="find_id_result.jsp" method="post">
			<div class="outBox">
	    		<div class="boxtitle">
        			<img src="../../img/Logo4.png" alt="" class="loginImg" onclick="location.href='../../index.html'">
        			<h1>인증번호</h1>
    			</div>
				<div class="inputBox">
    	    		<input type="number" id="tell" class="auto_verify" name="telchk" oninput="maxLengthCheck(this)" maxlength="5">
    	    		<input type="hidden" id="tel" name="tel" value=<%=user_tel %>>
        			<label for="verify">인증번호 확인</label>
		    	</div>
    			<button type="button" class="tagbarBT" onclick="result()">확인</button>
			</div>
			<%
			signup signup_telchk = new signup();
        	
        	int chknum = signup_telchk.telchk(user_tel);
			%>
			<script type="text/javascript">
				function result()
				{
					if (document.find_id_second.telchk.value == "" || document.find_id_second.telchk.length < 0)
					{
						alert ("인증번호 입력 후 다시 시도해 주세요.");
						document.find_id_second.telchk.focus();
					}
					else
					{
						if (<%=chknum%> == document.find_id_second.telchk.value)
						{
							alert("전화번호 본인인증이 완료되었습니다.");
							document.find_id_second.submit();
						}
						else
						{
							alert("전화번호 본인인증이 실패했습니다. 처음부터 다시 시도해 주세요.");
							setTimeout(function(){ window.location.href="find_id_first.jsp"}, 100);
						}
					}
				}
			</script>
		</form>
		<%
		}
		else
		{%>
			<script type="text/javascript">
				alert("존재하지 않는 전화번호입니다. 다시 시도해 주세요.");
				setTimeout(function() { window.location.href="find_id_first.jsp"}, 100);
			</script>
		<%
		}
	}
	catch (Exception ex)
	{
		out.println("오류가 발생했습니다. 오류 메시지 : " + ex.getMessage());
	}
	%>
	</body>
</html>
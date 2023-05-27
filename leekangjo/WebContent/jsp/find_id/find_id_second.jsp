<!-- 
아이디 찾기 중간 진행과정 (사용자 인증) 화면입니다.
 -->

<%@page import="java.sql.*"%>
<%@page import="leekangjo.SignUp" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="utf-8">
	    <title>LEEKANGJO - 아이디 찾기</title>
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
			String user_tel = request.getParameter("tel");
			
			// MySQL로 전송하기 위한 문자열 insertQuery 변수 선언
			String insertQuery = "SELECT tel from kyungmin_store.member where tel=?;";
			
			// SQL 쿼리문을 실행 (MySQL로 전송)하기 위한 객체 선언
			PreparedStatement psmt = connection.prepareStatement(insertQuery);
			
			// 앞서 문자열 쿼리문을 선언했던 VALUES의 ? 값에 하나씩 삽입하여 전송
			psmt.setString(1, user_tel);
			
			// 쿼리문을 전송해 받아온 정보를 result 객체에 저장
			ResultSet result = psmt.executeQuery();
			
			// DB에서 받아온 정보가 있다면...
			if (result.next() == true)
			{
	%>
		<form name="find_id_second" action="find_id_result.jsp" method="post">
			<div class="outBox">
	    		<div class="boxtitle">
        			<img src="/leekangjo/img/Logo4.png" alt="" class="loginImg" onclick="location.href='/leekangjo/index.jsp'">
        			<h1>인증번호</h1>
    			</div>
				<div class="inputBox">
    	    		<input type="number" id="tell" name="telchk" oninput="maxLengthCheck(this)" maxlength="5" placeholder="인증번호">
    	    		<input type="hidden" id="tel" name="tel" value=<%=user_tel%>>
		    	</div>
    			<button type="button" class="tagbarBT" onclick="result()">확인</button>
			</div>
			<%
				// 문자를 보내기 위한 메서드 생성
				SignUp signup_telchk = new SignUp();
			        	
				// 난수값은 user_tel 값을 넘긴 후 return 된 값
			        	int chknum = signup_telchk.telchk(user_tel);
			%>
			<script type="text/javascript">
				function result()
				{
					// 만약... 사용자가 입력한 값과 발생한 난수값이 같지 않다면
					if (document.find_id_second.telchk.value == "" || document.find_id_second.telchk.length < 0)
					{
						alert ("인증번호 입력 후 다시 시도해 주세요.");
						document.find_id_second.telchk.focus();
					}
					else
					{
						// 만약... 사용자가 입력한 값과 발생한 난수값이 같다면
						if (<%=chknum%> == document.find_id_second.telchk.value)
						{
							alert("전화번호 본인인증이 완료되었습니다.");
							document.find_id_second.submit();
						}
						// 그 외 기타 에러라면...
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
		// DB에서 받아온 정보가 없다면...
		else
		{%>
			<script type="text/javascript">
				alert("존재하지 않는 전화번호입니다. 다시 시도해 주세요.");
				setTimeout(function() { window.location.href="find_id_first.jsp"}, 100);
			</script>
		<%
		}
	}
	// DB연결 오류가 발생했다면...
	catch (Exception ex)
	{%>
		<form name="find_id_second">
			<div class="outBox">
	    		<div class="boxtitle">
        			<img src="/leekangjo/img/Logo4_warning.png" alt="" class="loginImg" onclick="location.href='/leekangjo/index.jsp'">
        			<h2>오류가 발생했습니다.</h2>
        			<h3>오류 메시지 : <%=ex.getMessage() %></h3>
    			</div>
			</div>
		</form>
	<%
	}
	%>
	</body>
	<script src="/leekangjo/js/FindJS.js"></script>
</html>
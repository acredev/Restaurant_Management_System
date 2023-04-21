<!-- 
로그인 성공 시, 출력할 테스트 페이지입니다.
 -->
<%@page import="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
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
		String user_pwd = request.getParameter("pwd");
		
		System.out.print(user_id);
		System.out.print(user_pwd);
		
		// MySQL로 전송하기 위한 쿼리문인 문자열 insertQuery 변수 선언
		// 아래의 쿼리문은 다음 의미를 가짐
		// 사용자가 입력한 id, pwd값이 테이블에 기록되어 있는 다른 id, pwd 값과 일치하는지 확인한다.
		String insertQuery = "SELECT name, id, pwd FROM kyungmin_store.member WHERE id='" + user_id + "' and pwd='" + user_pwd + "'";
		
		// SQL 쿼리문을 실행 (MySQL로 전송)하기 위한 객체 선언
		PreparedStatement psmt = connection.prepareStatement(insertQuery);
		
		// 조회된 결과물들을 저장하기 위한 ResultSet 객체 선언
		ResultSet result = psmt.executeQuery();
		
		
		// 만약... 받아온 정보값들이 존재한다면
		if (result.next() == true)
		{%>
			<h1>로그인 성공 !!!!!</h1>
		<%
		}
		else
		{%>
			<script>
			alert("비밀번호가 올바르지 않습니다. 다시 시도해 주세요.");
			setTimeout(function(){ window.location.href="../login/login_first.jsp"}, 100);
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
<%@page import="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
try
{
	//JDBC 드라이버 연결
	Class.forName("com.mysql.jdbc.Driver");
	String db_address = "jdbc:mysql://127.0.0.1:3306/kyungmin_store";
	String db_username = "root";
	String db_pwd = "root";
	Connection connection = DriverManager.getConnection(db_address, db_username, db_pwd);
	
	request.setCharacterEncoding("UTF-8");
	
	String user_id = request.getParameter("id");
	String user_pwd = request.getParameter("pwd");
	
	String insertQuery = "SELECT id, pwd FROM kyungmin_store.member WHERE id='" + user_id + "' and pwd='" + user_pwd + "'";
	
	PreparedStatement psmt = connection.prepareStatement(insertQuery);
	
	ResultSet result = psmt.executeQuery();
	
	if(result.next() == true)
	{
		String sent_id = result.getString("id");
		String sent_pwd = result.getString("pwd");
		
		if (user_id == sent_id)
		{%>
			<head>
				<script type="text/javascript">
					location.href = "index.html";
				</script>
			</head>
		<%
		}
		else
		{%>
			<head>
				<script type="text/javascript">
					alert("로그인 정보가 일치하지 않습니다. 아이디와 비밀번호 확인 후 재 로그인 바랍니다.");
					location.href = "login.jsp"
				</script>
			</head>
		<%
		}
	}
	else
	{
	%>
		<head>
			<script type="text/javascript">
				alert("로그인 정보를 올바르게 입력하지 않으셨거나, 회원 정보가 존재하지 않습니다. 회원가입 후 이용 바랍니다.");
				location.href = "login.jsp"
			</script>
		</head>
	<%
	}
}
	
catch (Exception ex)
{
	out.println("로그인 중 오류가 발생했습니다. 아래의 오류 메시지를 참고하여 페이지 관리자에게 문의 바랍니다. 불편을 드려 죄송합니다.\n" + ex.getMessage());
}
%>
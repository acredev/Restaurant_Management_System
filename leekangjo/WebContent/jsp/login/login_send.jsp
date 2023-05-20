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
	
	String insertQuery = "SELECT id, pwd FROM kyungmin_store.member WHERE id=?";
	
	PreparedStatement psmt = connection.prepareStatement(insertQuery);
	
	psmt.setString (1, user_id);
	
	ResultSet result = psmt.executeQuery();
	
	if (result.next() == true)
	{
		String db_user_id = result.getString("id");
		String db_user_pwd = result.getString("pwd");
		
		if (user_id.equals(db_user_id) && user_pwd.equals(db_user_pwd))
		{%>
			<!DOCTYPE html>
			<html>
				<head>
					<meta charset="utf-8">
				</head>
				<body>
					<form name="login_send" action="../../index.jsp" method="post">
						<input type="hidden" name="id" value="<%=user_id %>">;
						<script type="text/javascript">
							document.login_send.submit();
						</script>
					</form>
				</body>
			</html>
		<%
		}
		else
		{%>
			<script type="text/javascript">
				alert("로그인 정보가 일치하지 않습니다. 아이디와 비밀번호 확인 후, 다시 로그인 바랍니다.");
				location.href = "login_first.jsp";
			</script>
		<%
		}
	}
	else
	{%>
		<script type="text/javascript">
			alert("회원정보가 존재하지 않습니다. 회원가입 후 이용 바랍니다.");
			location.href = "../signup/signup_first.jsp";
		</script>
	<%
	}
}
catch (Exception ex)
{
	out.print(ex);
}
%>
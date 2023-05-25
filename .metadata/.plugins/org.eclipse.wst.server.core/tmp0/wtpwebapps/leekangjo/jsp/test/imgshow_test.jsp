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
		
		request.setCharacterEncoding("UTF-8");
		
		String insertQuery = "SELECT * FROM kyungmin_store.file";
		PreparedStatement psmt = connection.prepareStatement(insertQuery);
		
		ResultSet result = psmt.executeQuery();
		
		while (result.next())
		{
			String img = "/leekangjo/WebContent/img/upload_img/" + result.getString("fileRealName");
			out.println(result.getString("fileName"));
			out.println(result.getString("fileRealName"));
			out.print(img);
			%>
			<img src="<%=request.getContextPath() + img%>">
			<%
		}
	}
	catch (Exception ex)
	{
		out.print(ex.getMessage());
	}
	%>
</body>
</html>
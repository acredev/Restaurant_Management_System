<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>info</title>
        <link rel="icon" href="/leekangjo/img/favicon1.png">
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
			
			String store_num = request.getParameter("store_num");
			
			String insertQuery = "SELECT * FROM kyungmin_store.store_info WHERE store_num=?;";
			
			PreparedStatement psmt = connection.prepareStatement(insertQuery);
			
			psmt.setString(1, store_num);
            
			ResultSet result = psmt.executeQuery();
			
			while (result.next())
			{%>
				<a>전화번호 : <input type="text" value="<%=result.getString("tel") %>" style="border: none;background: transparent" readonly></a><br>
   				<a>영업시간 : <input type="text" value="<%=result.getString("business_hour") %>" style="border: none;background: transparent" readonly></a><br>
        		<a>주소 : <input type="text" value="<%=result.getString("address") %>" style="border: none;background: transparent" readonly></a><br>
        
        		<h2>공지사항</h2>
        		<input type="text" value="<%=result.getString("notice") %>" style="border: 1px solid #000;width: 99%;height: 150px;" readonly>
			<%
			}
    	}
    	catch (Exception ex)
    	{
    		out.print(ex);
    	}
    	%>
    </body>
</html>
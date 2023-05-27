<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.sql.*"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	
	String uploadDir = this.getClass().getResource("").getPath();
	uploadDir = uploadDir.substring(1, uploadDir.indexOf(".metadata")) + "leekangjo/WebContent/img/upload_img/store_img/main_img";
			
	//총 100M 까지 저장
	int maxSize = 1024 * 1024 * 100;
	String encoding = "UTF-8";
				
	// 사용자가 전송한 파일정보 토대로 업로드 장소에 파일 업로드 수행할 수 있게 함
	MultipartRequest multipartRequest = new MultipartRequest(request, uploadDir, maxSize, encoding, new DefaultFileRenamePolicy());
	String fileName = multipartRequest.getOriginalFileName("store_img");
	String fileRealName = multipartRequest.getFilesystemName("store_img");
				
	try
	{
		//JDBC 드라이버 연결
		Class.forName("com.mysql.jdbc.Driver");
		String db_address = "jdbc:mysql://127.0.0.1:3306/kyungmin_store";
		String db_username = "root";
		String db_pwd = "root";
		Connection connection = DriverManager.getConnection(db_address, db_username, db_pwd);
		
		SimpleDateFormat sDate = new SimpleDateFormat("yyMMddhhmmss");
		String store_num = (sDate.format(new Date()));
		String store_name = multipartRequest.getParameter("store_name");
		String store_tel = multipartRequest.getParameter("store_tel");
		String business_hour_open = multipartRequest.getParameter("business_hour_open");
		String business_hour_close = multipartRequest.getParameter("business_hour_close");
		String business_hour = business_hour_open + "~" + business_hour_close;
		String store_address = multipartRequest.getParameter("store_address");
		String store_notice = multipartRequest.getParameter("store_notice");
		
		String insertQuery = "INSERT INTO kyungmin_store.store_info VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
		PreparedStatement psmt = connection.prepareStatement(insertQuery);
		psmt.setString (1, store_num);
		psmt.setString (2, store_name);
		psmt.setString (3, store_tel);
		psmt.setString (4, business_hour);
		psmt.setString (5, store_address);
		psmt.setString (6, store_notice);
		psmt.setString (7, fileName);
		psmt.setString (8, fileRealName);
		psmt.setString (9, "/leekangjo/img/upload_img/store_img/main_img/" + fileRealName);
		psmt.executeUpdate();
	}
	catch (Exception ex)
	{
		out.print(ex.getMessage());
	}
%>
</body>
</html>
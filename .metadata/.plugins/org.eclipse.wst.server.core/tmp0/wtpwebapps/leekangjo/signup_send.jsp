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
	
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String name= request.getParameter("name");
	String stdnum = request.getParameter("stdnum");
	String tel = request.getParameter("tel");
	String email = request.getParameter("email");
	
	String insertQuery = "INSERT INTO `member` VALUES (?, ?, ?, ?, ?, ?, ?)";
	String memStatus = "예약 가능";
	
	PreparedStatement psmt = connection.prepareStatement(insertQuery);
	
	psmt.setString(1, stdnum);
	psmt.setString(2, name);
	psmt.setString(3, id);
	psmt.setString(4, pwd);
	psmt.setString(5, tel);
	psmt.setString(6, email);
	psmt.setString(7, memStatus);
	
	psmt.executeUpdate();
	response.sendRedirect("login.jsp");
	
}

catch (Exception ex)
{
	out.println("회원가입 중 오류가 발생했습니다. 아래의 오류 메시지를 참고하여 페이지 관리자에게 문의 바랍니다. 불편을 드려 죄송합니다.\n" + ex.getMessage());
}
%>
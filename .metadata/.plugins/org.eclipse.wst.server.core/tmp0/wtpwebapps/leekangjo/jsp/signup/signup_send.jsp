<!-- 
사용자가 입력한 신규 회원가입 정보를 DB로 전송하기 위한 페이지입니다.
 -->

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
	
	// 문자열의 인코딩 방식 설정
	request.setCharacterEncoding("UTF-8");
	
	// 파라미터를 통해 넘어온 회원가입 회원정보값 수령하여 문자열 변수에 저장
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String name= request.getParameter("name");
	String stdnum = request.getParameter("stdnum");
	String tel = request.getParameter("tel");
	String email = request.getParameter("email");
	
	// MySQL로 전송하기 위한 쿼리문인 문자열 insertQuery 변수 선언
	String insertQuery = "INSERT INTO `member` VALUES (?, ?, ?, ?, ?, ?, ?)";
	String memStatus = "예약 가능";
	
	// SQL 쿼리문을 실행 (MySQL로 전송)하기 위한 객체 선언
	PreparedStatement psmt = connection.prepareStatement(insertQuery);
	
	// 앞서 문자열 쿼리문을 선언했던 VALUES의 ? 값에 하나씩 삽입하여 전송
	psmt.setString(1, stdnum);
	psmt.setString(2, name);
	psmt.setString(3, id);
	psmt.setString(4, pwd);
	psmt.setString(5, tel);
	psmt.setString(6, email);
	psmt.setString(7, memStatus);
	
	// INSERT하여  반영된 레코드의 건수결과를 반환
	psmt.executeUpdate();
	
	// 모두 완료되면, login.jsp 페이지로 리다이렉트
	response.sendRedirect("../login/login_first.jsp");
	
}

catch (Exception ex)
{
	out.println("회원가입 중 오류가 발생했습니다. 아래의 오류 메시지를 참고하여 페이지 관리자에게 문의 바랍니다. 불편을 드려 죄송합니다.\n" + ex.getMessage());
}
%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//파라미터를 통해 받아온 아이디 값을 변수에 저장
	String user_id = request.getParameter("user_id");
	//세션에 MEMBERID 객체를 저장 (user_id 정보를 가져옴)
	session.setAttribute("MEMBERID", user_id);
	//MEMBERID 객체의 값을 memberId 문자열 변수에 저장
	String memberId = (String)session.getAttribute("MEMBERID");
	//만약, memberId 값이 null 이면 false(비로그인 상태)
	//memberId 값이 무언가 있다면 true(로그인 상태)
	boolean login = memberId == null ? false : true;
%>

<!DOCTYPE html>
<html>
	<head>
	    <meta charset="utf-8">
	    <title>LEEKANGJO - 보안인증</title>
	    <link href="../../../css/mypage.css" rel="stylesheet">
	    <link href="../../../css/buttonST.css" rel="stylesheet">
	    <link rel="icon" href="../../../img/favicon1.png" type="image/x-icon" sizes="16x16">
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
	    %>
	    
	    <form name="myinfo_pwdchk" action="myinfo_pwdchk_send.jsp" method="post">
    	<div class="outBox">
	    	<div class="boxtitle">
        		<img src="../../../img/Logo4.png" alt="" class="loginImg" onclick="location.href='../../../index.jsp'">
   	    		<h1>마이페이지</h1>
    		</div>
               	<div class="veri_form-item">
	          		<input type="password" id="pwd" class="my_pwd" name="pwd" placeholder="* 비밀번호를 입력해주세요." >
               		<input type="hidden" id="user_id" name="user_id" value="<%=user_id %>">
                    <hr>
            	</div>
                <button type="submit" id="goto_myinfo" class="tagbarBT">확인</button>
			</div>
		</form>
	    <%
	}
	catch (Exception ex)
	{
		out.print(ex);	
	}
	%>
	</body>
</html>
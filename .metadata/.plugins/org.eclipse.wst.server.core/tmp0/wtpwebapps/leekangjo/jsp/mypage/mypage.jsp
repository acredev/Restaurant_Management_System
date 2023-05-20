 	<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String user_id = request.getParameter("user_id");
	session.setAttribute("MEMBERID", user_id);
	String memberId = (String)session.getAttribute("MEMBERID");
	boolean login = memberId == null ? false : true;
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
	    <title>LEEKANGJO - 마이페이지</title>
	    <link href="../../css/mypage.css" rel="stylesheet">
	    <link href="../../css/buttonST.css" rel="stylesheet">
	    <link rel="icon" href="../../img/favicon1.png" type="image/x-icon" sizes="16x16">
	</head>
	<body>
	<%	
	if (login)
	{
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
            
            String insertQuery = "SELECT id, name from kyungmin_store.member where id=?";
            
            PreparedStatement psmt = connection.prepareStatement(insertQuery);
            
            psmt.setString(1, user_id);
            
            ResultSet result = psmt.executeQuery();
            
            if (result.next() == true)
            {
            	String user_name = result.getString("name");	
            	System.out.print(user_name);
            	%>
            	<form name="mypage" class="mypage" method="post">
	    			<div class="outBox">
		    			<div class="boxtitle">
		        			<img src="../../img/Logo4.png" alt="" class="loginImg" onclick="location.href='../../index.jsp'">
    	    				<h1>마이페이지</h1>
                   			<h2>안녕하세요! <input type="text" value="<%=user_name%>"></h2>
                   			<input type="hidden" name="user_id" id="user_id" value="<%=user_id %>">
	    				</div>
    					<button type="button" onclick="myinfo_click()" class="tagbarBT" id="btn_id"> <img src="../../img/myimg.png" class="testimg">나의정보 </button>
                		<button type="button" onclick="alert('잠시 후 시도해주세요.')" class="tagbarBT" id="btn_id"> <img src="../../img/purchase.png" class="testimg">주문내역 </button>
                		<button type="button" onclick="alert('잠시 후 시도해주세요.')" class="tagbarBT" id="btn_id"> <img src="../../img/review.png" class="testimg">리뷰관리 </button>
                		<hr>
					</div>
				</form>
            	<%
            }
            else
            {%>
            	<form name="mypage" class="mypage" method="post">
    	    		<div class="outBox">
						<div class="boxtitle">
						<a class="topid">오류</a>
						<hr>
							<div class="form-item">
								<h1>잘못된 접근입니다.</h1>
								<br>
								<h2>회원정보가 존재하지 않습니다.</h2>
							</div>
						</div>
					</div>
    			</form>
    		<%
            }
		}
		catch (Exception ex)
		{
			out.print(ex);
		}
	}
	else
	{%>
		<form name="mypage" class="mypage" method="post">
     		<div class="outBox">
				<div class="boxtitle">
					<a class="topid">오류</a>
					<hr>
					<div class="form-item">
						<h1>잘못된 접근입니다.</h1>
						<br>
						<h2>비로그인 상태로 비정상적인 접근입니다.</h2>
					</div>
				</div>
			</div>
    	</form>
	<%		
	}%>	
	</body>
	<script src="../../js/mypage.js"></script>
</html>
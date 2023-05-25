<!-- 
마이페이지 화면입니다.
 -->

<%@page import="java.sql.*" %>
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
	    <title>LEEKANGJO - 마이페이지</title>
	    <link href="../../css/mypage.css" rel="stylesheet">
	    <link href="../../css/buttonST.css" rel="stylesheet">
	    <link rel="icon" href="../../img/favicon1.png" type="image/x-icon" sizes="16x16">
	</head>
	<body>
	<%	
	// 로그인 상태라면...
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
            
            // MySQL로 전송할 변수 선언
            String insertQuery = "SELECT id, name from kyungmin_store.member where id=?";
            
            // SQL 쿼리문을 실행 (MySQL로 전송)하기 위한 객체 선언
            PreparedStatement psmt = connection.prepareStatement(insertQuery);
            
            // 앞서 선언했던 insertQuery 변수의 ? 값에 하나씩 삽입하여 전송
            psmt.setString(1, user_id);
            
            // 쿼리문을 전송해 받아온 정보를 result 객체에 저장
            ResultSet result = psmt.executeQuery();
            
            // 받아온 정보가 있다면...
            if (result.next() == true)
            {
            	// DB에 저장된 사용자 이름을 user_name 변수에 저장
            	String user_name = result.getString("name");
            	%>
            	<form name="mypage" class="mypage" method="post">
	    			<div class="outBox">
		    			<div class="boxtitle">
		        			<img src="../../img/Logo4.png" alt="" class="loginImg" onclick="location.href='../../index.jsp'">
    	    				<h1>마이페이지</h1>
                   			<h2>안녕하세요! <input type="text" value="<%=user_name%>"></h2>
                   			
                   			<!-- 다음 페이지로 파라미터값을 넘기기 위한 input hidden 선언 -->
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
            // 로그인 상태가 아니라면...
            else
            {%>
            	<form name="mypage">
    	    		<div class="outBox">
						<div class="boxtitle">
    	    				<img src="../../img/Logo4_warning.png" alt="" class="loginImg" onclick="location.href='../../index.jsp'">
        					<h1>비로그인 상태입니다.</h1>
    					</div>
					</div>
    			</form>
    		<%
            }
		}
		// DB연결 오류가 발생했다면...
		catch (Exception ex)
		{%>
			<form name="mypage">
				<div class="outBox">
					<div class="boxtitle">
						<img src="../../img/Logo4_warning.png" alt="" class="loginImg" onclick="location.href='../../index.jsp'">
						<h2>오류가 발생했습니다.</h2>
						<h3>오류 메시지 : <%=ex.getMessage() %></h3>
					</div>
				</div>
			</form>
		<%
		}
	}
	// 로그인 상태가 아니라면...
	else
	{%>
		<form name="mypage">
     		<div class="outBox">
		    	<div class="boxtitle">
    	    		<img src="../../img/Logo4_warning.png" alt="" class="loginImg" onclick="location.href='../../index.jsp'">
        			<h1>비로그인 상태입니다.</h1>
    			</div>
			</div>
    	</form>
	<%		
	}%>	
	</body>
	<script src="../../js/mypage.js"></script>
</html>
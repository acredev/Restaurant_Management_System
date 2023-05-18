<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!Doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <title>LEEKANGJO - 경민대 밥집</title>
        <link href="../../css/Header.css" rel="stylesheet" type="text/css">
        <link href="../../css/buttonST.css" rel="stylesheet" type="text/css">
        <link href="../../css/slide.css" rel="stylesheet" type="text/css">
        <link rel="icon" href="./img/favicon1.png">
    </head>
    <body>
        <header>
            <img src="../../img/MainLogo.png" class="Logoimg" onclick ="location.href='../../index.jsp'">
            <h1 onclick ="location.href='../login/login_first.jsp'">Login</h1>
        </header>
        <div id="container">
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
            
			if (result.next() == true)
            {%>
            	<!-- 나중에 이미지DB 작업하면 아래 image들을 db에서 불러온 정보들로 대체하도록 -->
            	<h1>test</h1>
            	<div class="imgAlbum">
    	      		<div class="images">
          				<div id="image"></div>
                 		<div id="image"></div>
                  		<div id="image"></div>
	                  	<div id="image"></div>
            	   	</div>
       			</div>
				<button class="tagbarBT" id="prev">&lt;</button>
				<button class="tagbarBT" id="next">&gt;</button>
			</div>
        	<div id="iframCon">
        		<input type="hidden" id="store_num" name="store_num" value="<%=store_num%>">
	            <button class="tagbarBT" id="iframConBt1" onclick="ChnInfo()">정보</button>
            	<button class="tagbarBT" id="iframConBt2" onclick="ChnMenu()">메뉴</button>
            	<button class="tagbarBT" id="iframConBt3" onclick="ChnSeat()">좌석</button>
            	<iframe id="iframeSec" scrolling=no></iframe>
	        </div>
        	<%
            }
			else
			{%>
				<h1>잘못된 접근입니다.</h1>
			<%
			}
        }
        catch (Exception ex)
        {
        	out.print(ex);	
        }
        %>	
        <script src="../../js/slide.js"></script>
        <script src="../../js/store.js"></script>
    </body>
</html>
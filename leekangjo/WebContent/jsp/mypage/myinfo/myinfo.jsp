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
	    <link href="../../../css/mypage.css" rel="stylesheet">
	    <link href="../../../css/buttonST.css" rel="stylesheet">
	    <link rel="icon" href="../../../img/favicon1.png" type="image/x-icon" sizes="16x16">
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
            
            String insertQuery = "SELECT * FROM kyungmin_store.member WHERE id=?";
            
            PreparedStatement psmt = connection.prepareStatement(insertQuery);
            
            psmt.setString(1, user_id);
            
            ResultSet result = psmt.executeQuery();
            
            if (result.next() == true)
            {%>
            	<form name="myinfo" class="myinfo" action="myinfo_update_send.jsp" method="post">
    	    	<div class="outBox">
    		    	<div class="boxtitle">
        	    		<a class="topid">나의 정보</a>
                        <hr>
                   		<div class="form-item">
	                        <a>이름</a>
                   			<input type="text" id="user_name" name="user_name" value="<%=result.getString("name") %>" readonly >
                        	<a>아이디 </a>
                        	<input type="text" id="user_id" name="user_id" value="<%=result.getString("id") %>" readonly >
	                        <a>학번</a>
                        	<input type="number" id="user_stdid" name="user_stdid" value="<%=result.getString("stdid") %>" readonly >
                        	<a>이메일</a>
                        	<input type="text" id="user_email" name="user_email" value="<%=result.getString("email") %>" maxlength="30" >
                        	<input type="hidden" id="emailchk" name="emailchk" value="email_chknp">
                        	<button type="button" id="email_change" class="tagbarBT" onclick="myinfo_emailchk()">이메일 변경 (이메일 인증)</button>
	                        <a>전화번호</a>
                        	<input type="number" id="user_tel" name="user_tel" value="<%=result.getString("tel") %>" >
                        	<input type="hidden" id="telchk" name="telchk" value="tel_chkno">
                        	<button type="button" id="telnum_change" class="tagbarBT " onclick="myinfo_telchk()">전화번호 변경 (SMS 인증)</button>
                        	<hr>
    	    			</div>
                    <div class="btnbox">
        			<button type="button" id="myinfo_cancle" onclick="location.href='../mypage.jsp'" class="tagbarBT">취소</button>
        			<button type="submit" id="myinfo_save" onclick="alert('민혁선배. 잠깐만 이리 와주세요.')" class="tagbarBT">저장</button>
                    </div>
    			</div>
                </div>
    		</form>
    		<%
            }
            else
            {%>
            	<form name="myinfo" class="myinfo" method="post">
    	    	<div class="outBox">
    		    	<div class="boxtitle">
        	    		<a class="topid">오류</a>
                        <hr>
                   		<div class="form-item">
                        	<h1>잘못된 접근입니다.</h1>
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
		<form name="myinfo" class="myinfo" method="post">
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
	}
	%>
	</body>
	<script src="../../../js/mypage.js"></script>
</html>
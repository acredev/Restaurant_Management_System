<!-- 
마이페이지 > 나의 정보 화면입니다.
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
	    <title>LEEKANGJO - 나의 정보</title>
	    <link href="/leekangjo/css/mypage.css" rel="stylesheet">
	    <link href="/leekangjo/css/buttonST.css" rel="stylesheet">
	    <link rel="icon" href="/leekangjo/img/favicon1.png" type="image/x-icon" sizes="16x16">
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
            
            // MySQL로 전송하기 위한 insertQuery 변수 선언
            String insertQuery = "SELECT * FROM kyungmin_store.member WHERE id=?";
            
            // SQL 쿼리문을 실행 (MySQL로 전송)하기 위한 객체 선언
            PreparedStatement psmt = connection.prepareStatement(insertQuery);
            
            // 앞서 선언했던 insertQuery 변수의 ? 값에 하나씩 삽입하여 전송
            psmt.setString(1, user_id);
            
            // 쿼리문을 전송해 받아온 값을 result 객체에 저장
            ResultSet result = psmt.executeQuery();
            
            // 받아온 정보가 있다면...
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
                        	<input type="text" id="user_email" name="user_email" value="<%=result.getString("email") %>" readonly >
                        	<button type="button" id="email_change" name="email_change" class="tagbarBT" onclick="myinfo_emailchange()">이메일 변경 (이메일 인증)</button>
	                        <a>전화번호</a>
                        	<input type="number" id="user_tel" name="user_tel" value="<%=result.getString("tel") %>" readonly >
                        	<button type="button" id="telnum_change" name="tel_change" class="tagbarBT " onclick="myinfo_telchange()">전화번호 변경 (SMS 인증)</button>
							<button type="button" id="pwd_change" name="pwd_change" class="tagbarBT " onclick="myinfo_pwdchange()">비밀번호 변경</button>
							
							<!-- 인증 내용을 파악하는 input hidden -->
                        	<input type="hidden" id="telchk" name="telchk" value="tel_chkno">
                        	<input type="hidden" id="emailchk" name="emailchk" value="email_chkno">
                        	
                        	<!-- 변경 내용을 파악하는 input hidden -->
                        	<input type="hidden" id="isEmailChange" name="isEmailChange" value="no">
                        	<input type="hidden" id="isTelChange" name="isTelChange" value="no">
                        	<!-- 변경 내용을 파악하는 input hidden, 비밀번호 변경 시 비밀번호 한정으로 value값이 변경한 비밀번호 값으로 들어감 -->
                        	<input type="hidden" id="isPwdChange" name="isPwdChange" value="no">
                        	<hr>
    	    			</div>
                    	<div class="btnbox">
        					<button type="button" id="myinfo_cancle" onclick="location.href='/leekangjo/jsp/mypage/mypage.jsp'" class="tagbarBT">취소</button>
        					<button type="button" id="myinfo_save" onclick="myinfo_saveBtn()" class="tagbarBT">저장</button>
                    	</div>
                    	<div class="IPSBOX">
	                   		<a class="bye"  onclick="myinfo_remove()">회원 탈퇴</a>
    	                </div>
    				</div>
                </div>
    		</form>
    		<%
            }
            // 받아온 정보가 없다면...
            else
            {%>
            	<form name="myinfo">
    	    		<div class="outBox">
		    			<div class="boxtitle">
        					<img src="/leekangjo/img/Logo4_warning.png" alt="" class="loginImg" onclick="location.href='/leekangjo/index.jsp'">
        					<h1>회원정보가 없습니다.</h1>
    					</div>
					</div>
    			</form>
            <%
            }
		}
		// DB연결 오류가 발생했다면...
		catch (Exception ex)
		{%>
			<form name="myinfo" class="myinfo" method="post">
    	    	<div class="outBox">
		    		<div class="boxtitle">
        				<img src="/leekangjo/img/Logo4_warning.png" alt="" class="loginImg" onclick="location.href='/leekangjo/index.jsp'">
        				<h1>오류가 발생했습니다.</h1>
        				<h3><%=ex.getMessage() %></h1>
    				</div>
				</div>
    		</form>
		<%
		}
	}
	// 로그인 상태가 아니라면...
	else
	{%>
		<form name="myinfo">
			<div class="outBox">
				<div class="boxtitle">
        			<img src="/leekangjo/img/Logo4_warning.png" alt="" class="loginImg" onclick="location.href='/leekangjo/index.jsp'">
        			<h1>비로그인 상태입니다.</h1>
    			</div>
			</div>
		</form>
	<%
	}%>
	</body>
	<script src="/leekangjo/js/mypage.js"></script>
</html>
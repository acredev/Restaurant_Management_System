<%@page import="java.sql.*" %>
<%@page import="leekangjo.SignUp" %>
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
		<meta charset="UTF-8">
		<meta name="viewport" content="width-device-width,initial-scale-1.0,user-scalable=no">
		<title>LEEKANGJO - 휴대폰 번호 본인 인증</title>
		<link href="/leekangjo/css/Header.css" rel="stylesheet" type="text/css">
    	<link href="/leekangjo/css/signup_style.css" rel="stylesheet" type="text/css">
    	<link href="/leekangjo/css/signup_first.css" rel="stylesheet">
    	<link href="/leekangjo/css/buttonST.css" rel="stylesheet">
    	<link href="/leekangjo/css/LoginMain.css" rel="stylesheet">
    	<link rel="icon" href="/leekangjo/img/favicon1.png" type="image/x-icon" sizes="16x16">
    	<script src="/leekangjo/js/signup.js"></script>
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
            String insertQuery = "SELECT tel FROM kyungmin_store.member WHERE id=?";
            
            // SQL 쿼리문을 실행 (MySQL로 전송)하기 위한 객체 선언
            PreparedStatement psmt = connection.prepareStatement(insertQuery);
            
            // 앞서 선언했던 insertQuery 변수의 ? 값에 하나씩 삽입하여 전송
            psmt.setString(1, user_id);
            
            // 쿼리문을 전송해 받아온 값을 result 객체에 저장
			ResultSet result = psmt.executeQuery();
            
            // 받아온 정보가 있다면...
            if (result.next() == true)
            {
            	String tel = result.getString("tel");
                
                SignUp signup_telchk = new SignUp();
                
                int chknum = signup_telchk.telchk(tel);%>
                
                <script type="text/javascript">
					function myinfo_remove_chk()
					{
						if (document.remove_telchk.telchk.value == "" || document.remove_telchk.length < 0)
						{
							alert("인증번호를 입력 후 다시 시도해 주세요.");
							document.remove_telchk.telchk.focus();
						}
						else
						{
							if(<%=chknum%> == document.remove_telchk.telchk.value)
							{
								alert("휴대폰 본인인증이 완료되었습니다. 회원탈퇴가 정상적으로 완료되었습니다.");
								remove_telchk.submit();
							}
							else
							{
								alert("휴대폰 본인인증이 실패했습니다. 다시 시도해 주세요.");
								document.remove_telchk.telchk.focus();
							}
						}
					}
				</script>
            	<div id="box">
            		<fieldset>
            			<img src="/leekangjo/img/Logo4.png" alt="" class="loginImg">
            			<h2>SMS인증</h2>
						<form name="remove_telchk" class="formD" action="myinfo_remove_send.jsp">
							<input type="text" class="telchk" name="telchk" id="telchk" maxlength="5" placeholder="* 인증번호" >
							<input type="hidden" name="user_id" id="user_id" value="<%=user_id%>">
            				<button type="button" class="tagbarBT" onclick="myinfo_remove_chk()">본인인증</button>
						</form>
					</fieldset>
            	</div>
            <%
            }
            
            // 받아온 정보가 없다면...
            else
            {%>
            	<div id="box">
            		<div class="outBox">
						<div class="boxtitle">
        					<img src="/leekangjo/img/Logo4_warning.png" alt="" class="loginImg" onclick="location.href='/leekangjo/index.jsp'">
		        			<h2>회원정보가 없습니다.</h2>
    					</div>
					</div>
            	</div>
            <%
            }
		}
		catch (Exception ex)
		{%>
			<div id="box">
            	<div class="outBox">
					<div class="boxtitle">
        				<img src="/leekangjo/img/Logo4_warning.png" alt="" class="loginImg" onclick="location.href='/leekangjo/index.jsp'">
		       			<h2>오류가 발생했습니다.</a>
		       			<h3><%=ex.getMessage() %></h3>
    				</div>
				</div>
            </div>
		<%
		}
	}
	// 비로그인 상태라면...
	else
	{%>
		<div class="outBox">
			<div class="boxtitle">
       			<img src="/leekangjo/img/Logo4_warning.png" alt="" class="loginImg" onclick="location.href='/leekangjo/index.jsp'">
        		<h2>비로그인 상태입니다.</h2>
    		</div>
		</div>
	<%	
	}%>
	</body>
</html>
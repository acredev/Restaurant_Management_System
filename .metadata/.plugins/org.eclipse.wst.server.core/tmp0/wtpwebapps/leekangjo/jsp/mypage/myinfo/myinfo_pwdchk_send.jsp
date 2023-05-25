<!-- 
마이페이지 > 나의 정보에 진입하기 위한 비밀번호 검증 과정을 전송하는 화면입니다.
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
    
<%
try
{
	//JDBC 드라이버 연결
	Class.forName("com.mysql.jdbc.Driver");
	String db_address = "jdbc:mysql://127.0.0.1:3306/kyungmin_store";
	String db_username = "root";
	String db_pwd = "root";
	Connection connection = DriverManager.getConnection(db_address, db_username, db_pwd);
	
	//문자열의 인코딩 방식 설정
	request.setCharacterEncoding("UTF-8");
	
	// 파라미터를 통해 받아온 값을 변수에 저장
	String user_pwd = request.getParameter("pwd");
	
	// MySQL로 전송하기 위한 문자열 insertQuery 변수 선언
	String insertQuery = "SELECT id, pwd FROM kyungmin_store.member WHERE id=?";
	
	// SQL 쿼리문을 실행 (MySQL로 전송)하기 위한 객체 선언
	PreparedStatement psmt = connection.prepareStatement(insertQuery);
	
	// 앞서 선언했던 쿼리문의 ? 부분에 하나씩 삽입하여 전송
	psmt.setString (1, user_id);
	
	// 쿼리문을 전송해 받아온 정보를 result 객체에 저장
	ResultSet result = psmt.executeQuery();
	
	// 받아온 정보가 있다면...
	if (result.next() == true)
	{
		// DB에 저장된 회원정보를 변수에 저장
		String db_user_id = result.getString("id");
		String db_user_pwd = result.getString("pwd");
		
		// DB에 저장된 회원정보와 사용자가 입력한 회원정보가 같다면...
		if (user_id.equals(db_user_id) && user_pwd.equals(db_user_pwd))
		{%>
			<!DOCTYPE html>
			<html>
				<head>
					<meta charset="utf-8">
				</head>
				<body>
					<form name="myinfo_pwdchk_send" action="myinfo.jsp" method="post">
						<input type="hidden" name="user_id" value="<%=user_id %>">;
						<script type="text/javascript">
							document.myinfo_pwdchk_send.submit();
							window.resizeTo(500,800);
							window.onresize=(_=>{
								window.resizeTo(500,800);
							})
						</script>
					</form>
				</body>
			</html>
		<%
		}
		// DB에 저장된 회원정보와 사용자가 입력한 회원정보가 같지 않다면...
		else
		{%>
			<script type="text/javascript">
				alert("비밀번호가 일치하지 않습니다. 다시 시도 바랍니다.");
				location.href="myinfo_pwdchk.jsp";
				document.getElementById("pwd").value="";
				document.getElementById("pwd").focus();
			</script>
		<%
		}
	}
	// DB에서 받아온 정보가 없다면...
	else
	{%>
		<script type="text/javascript">
			alert("오류가 발생했습니다.");
			location.href="myinfo_pwdchk.jsp";
			document.getElementById("pwd").value="";
			document.getElementById("pwd").focus();
		</script>
	<%
	}
}
// DB연결 오류가 발생했다면...
catch (Exception ex)
{%>
	<form name="myinfo_pwdchk_send">
	<div class="outBox">
		<div class="boxtitle">
			<img src="../../img/Logo4_warning.png" alt="" class="loginImg" onclick="location.href='../../index.jsp'">
			<h2>오류가 발생했습니다.</h2>
			<h3>오류 메시지 : <%=ex.getMessage() %></h3>
		</div>
	</div>
</form>
<%
}%>
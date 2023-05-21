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
	
	request.setCharacterEncoding("UTF-8");
	String user_pwd = request.getParameter("pwd");
	
	String insertQuery = "SELECT id, pwd FROM kyungmin_store.member WHERE id=?";
	
	PreparedStatement psmt = connection.prepareStatement(insertQuery);
	
	psmt.setString (1, user_id);
	
	ResultSet result = psmt.executeQuery();
	
	if (result.next() == true)
	{
		String db_user_id = result.getString("id");
		String db_user_pwd = result.getString("pwd");
		
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
catch (Exception ex)
{
	out.print(ex);
}
%>
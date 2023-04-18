<%@page import="leekangjo.signup" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width-device-width,initial-scale-1.0,user-scalable=no">
		<title>아이디 중복확인</title>
		<link href="css/Header.css" rel="stylesheet" type="text/css">
        <link href="css/signup_style.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		<h2>아이디 중복체크</h2>
		<%
			request.setCharacterEncoding("UTF-8");
			String id = request.getParameter("userid");
	
			signup signup_idchk = new signup();
	
			int result = signup_idchk.idchk(id);
			if (result == 1)
			{
				out.print("사용 가능한 아이디입니다.");%>
				<input type="button" value="아이디 사용하기" onclick="result();"><%
			}
			else if (result == 0)
			{
				out.print("중복된 아이디로, 사용이 불가능합니다.");
			}
			else
			{
				out.print("오류가 발생했습니다. (-1)");
			}
			%>
		<fieldset>
			<form action="signup_idchk.jsp" method="post" name="form_idchk">
				ID : <input type="text" name="userid" maxlength="10" value="<%=id %>">
				<input type="submit" value="중복 확인">
			</form>
		</fieldset>
			
		<script type="text/javascript">
			function result()
			{
				opener.document.signup.id.value = document.form_idchk.userid.value;
				opener.document.signup.id.readOnly = true;
				window.close();
			}
		</script>
	</body>
</html>
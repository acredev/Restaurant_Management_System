<%@page import="leekangjo.signup" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width-device-width,initial-scale-1.0,user-scalable=no">
		<title>학번 중복확인</title>
		<link href="css/Header.css" rel="stylesheet" type="text/css">
        <link href="css/signup_style.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		<h2>학번 중복체크</h2>
		<%
			request.setCharacterEncoding("UTF-8");
			String stdnum = request.getParameter("stdnum");
	
			signup signup_stdnumchk = new signup();
	
			int result = signup_stdnumchk.stdnumchk(stdnum);
			if (result == 1)
			{
				out.print("사용 가능한 학번입니다.");%>
				<input type="button" value="학번 사용하기" onclick="result();"><%
			}
			else if (result == 0)
			{
				out.print("중복된 학번으로, 사용이 불가능합니다.");
			}
			else
			{
				out.print("오류가 발생했습니다. (-1)");
			}
			%>
		<fieldset>
			<form action="signup_stdnumchk.jsp" method="post" name="form_stdnumchk">
				ID : <input type="text" name="stdnum" maxlength="10" value="<%=stdnum %>">
				<input type="submit" value="중복 확인">
			</form>
		</fieldset>
			
		<script type="text/javascript">
			function result()
			{
				opener.document.signup.stdnum.value = document.form_stdnumchk.stdnum.value;
				opener.document.signup.stdnum.readOnly = true;
				window.close();
			}
		</script>
	</body>
</html>
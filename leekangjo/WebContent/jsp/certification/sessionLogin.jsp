<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String memberId = (String)session.getAttribute("MEMBERID");
	boolean login = memberId == null ? false : true;
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>LEEKANGJO - 로그인 여부</title>
	</head>
	<body>
	<%
		if (login)
		{%>
			로그인 상태입니다. 아이디 : "<%=memberId %>"
		<%
		}
		else
		{%>
			비로그인 상태입니다.
		<%
		}
	%>
	</body>
</html>
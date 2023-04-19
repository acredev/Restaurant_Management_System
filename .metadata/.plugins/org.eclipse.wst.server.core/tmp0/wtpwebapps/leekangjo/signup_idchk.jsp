<!-- 
아이디 중복확인을 위한 페이지입니다.
 -->

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
			// 받아올 문자열의 인코딩방식 설정
			request.setCharacterEncoding("UTF-8");
			// 파라미터를 통해 받아온 정보값을 변수에 저장
			String id = request.getParameter("userid");
			
			// 클래스에 지정한 함수를 사용하기 위한 객체 선언
			signup signup_idchk = new signup();
	
			// 클래스에서 지정한 함수를 실행시킨 값을 불러오기 위한 변수 선언
			int result = signup_idchk.idchk(id);
			if (result == 1)
			{
				out.print("사용 가능한 아이디입니다.");%>
				<!-- 사용 가능한 아이디라면, '아이디 사용하기' 버튼이 활성화됨 -->
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
				opener.document.signup.id.style.color = "grey";
				opener.document.signup.id.style.onfocus="this.blur();";
				window.close();
			}
		</script>
	</body>
</html>
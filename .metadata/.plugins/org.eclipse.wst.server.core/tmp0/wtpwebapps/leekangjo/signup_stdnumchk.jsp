<!-- 
학번 중복체크를 위한 페이지입니다.
 -->

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
			// 문자열의 인코딩 방식 설정
			request.setCharacterEncoding("UTF-8");
			// 파라미터를 통해 받아온 값을 변수에 저장
			String stdnum = request.getParameter("stdnum");
	
			// 클래스에 지정한 함수를 사용하기 위한 객체 선언
			signup signup_stdnumchk = new signup();
	
			// 클래스에 지정한 함수를 실행시킨 결과값을 변수에 저장
			int result = signup_stdnumchk.stdnumchk(stdnum);
			if (result == 1)
			{
				out.print("사용 가능한 학번입니다.");%>
				<!-- 학번이 사용 가능하다면, '학번 사용하기' 버튼이 활성화됨 -->
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
				학번 : <input type="text" name="stdnum" maxlength="10" value="<%=stdnum %>">
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
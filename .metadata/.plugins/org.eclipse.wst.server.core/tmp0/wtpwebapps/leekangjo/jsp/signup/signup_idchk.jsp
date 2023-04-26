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
		<title>LEEKANGJO - 아이디 중복확인</title>
		<link href="../../css/Header.css" rel="stylesheet" type="text/css">
        <link href="../../css/signup_style.css" rel="stylesheet" type="text/css">
        <script src="../../js/signup.js"></script>
	</head>
	<body>
		<form name="signup_idchk">
			<input type="hidden" id="idchk_result" name="idchk_result" value="id_chkno">
			<a id="result_txt"></a>
			<%
			// 받아올 문자열의 인코딩방식 설정
			request.setCharacterEncoding("UTF-8");
			// 파라미터를 통해 받아온 정보값을 변수에 저장
			String id = request.getParameter("id");
			
			if (id == null || id.isEmpty())
			{%>
			<script type="text/javascript">
				document.getElementById("idchk_result").value = "id_chkno";
				document.getElementById("result_txt").innerText = ""
			</script>
			<%
			}
			else
			{
				// 클래스에 지정한 함수를 사용하기 위한 객체 선언
				signup signup_idchk = new signup();
	
				// 클래스에서 지정한 함수를 실행시킨 값을 불러오기 위한 변수 선언
				int result = signup_idchk.idchk(id);
				if (result == 1)
				{%>
					<script type="text/javascript">
						document.getElementById("idchk_result").value = "id_chkyes";
						document.getElementById("result_txt").innerText = "사용이 가능한 아이디입니다."
						document.getElementById("result_txt").style = "color:blue";
					</script>
				<%
				}
				else if (result == 0)
				{%>
					<script type="text/javascript">
						document.getElementById("idchk_result").value = "id_chkno";
						document.getElementById("result_txt").innerText = "사용이 불가능한 아이디입니다.";
						document.getElementById("result_txt").style = "color:red";
					</script>
				<%
				}
				else
				{
					out.print("오류가 발생했습니다. (-1)");
				}
			}
			%>
		</form>
	</body>
</html>
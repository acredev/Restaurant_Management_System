<!-- 
마이페이지 > 나의 정보 > 휴대폰 번호 변경 > 휴대폰 번호 본인인증 화면입니다.
 -->

<%@page import="leekangjo.signup" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width-device-width,initial-scale-1.0,user-scalable=no">
	<title>LEEKANGJO - 휴대폰 번호 본인 인증</title>
	<link href="../../../css/Header.css" rel="stylesheet" type="text/css">
    <link href="../../../css/signup_style.css" rel="stylesheet" type="text/css">
    <link href="../../../css/signup_first.css" rel="stylesheet">
    <link href="../../../css/buttonST.css" rel="stylesheet">
    <link rel="icon" href="../../../img/favicon1.png" type="image/x-icon" sizes="16x16">
    <script src="../../../js/signup.js"></script>
</head>
<body style="overflow-x:hidden;overflow-y:hidden">
<%
	// 문자열의 인코딩 방식 설정
	request.setCharacterEncoding("UTF-8");
	// 파라미터를 통해 받아온 값을 변수에 저장
	String tel = request.getParameter("user_tel");
	
	// 클래스에 지정한 함수를 사용하기 위한 객체 선언
	signup signup_telchk = new signup();
	
	// 클래스에 지정한 함수를 실행시킨 결과값을 변수에 저장
	int chknum = signup_telchk.telchk(tel);
	%>
	<script type="text/javascript">
		function mypage_telchk()
		{
			if (document.form_telchk.telchk.value == "" || document.form_telchk.length < 0)
			{
				alert("인증번호를 입력 후 다시 시도해 주세요.");
				document.form_telchk.tel.focus();
			}
			else
			{
				if(<%=chknum%> == document.form_telchk.telchk.value)
				{
					alert("휴대폰 번호 변경사항이 발생했습니다. '나의 정보 → 저장' 버튼을 눌러 변경사항을 저장해 주세요. '저장' 버튼을 누르지 않을 경우 저장되지 않습니다.");
					opener.document.myinfo.telchk.value = "tel_chkyes";
					opener.document.myinfo.isTelChange.value = "yes";
					opener.document.myinfo.user_tel.value = "<%=tel %>";
					opener.document.myinfo.user_tel.readOnly = true;
					opener.document.myinfo.user_tel.style.color = "blue";
					opener.document.myinfo.user_tel.style.onfocus = "this.blur();";
					opener.document.myinfo.tel_change.disabled = "disabled";
					opener.document.myinfo.tel_change.style.backgroundColor = "#DDDDDD";
					opener.document.myinfo.tel_change.innerText = "휴대폰 번호 변경완료";
					opener.document.myinfo.tel_change.style.color = "blue";
					window.close();
				}
				else
				{
					alert("휴대폰 본인인증이 실패했습니다. 다시 시도해 주세요.");
				}
			}
		}
	</script>
    <div id="box">
	<fieldset>
            <img src="../../../img/Logo4.png" alt="" class="loginImg">
            <h2>SMS인증</h2>
		<form name="form_telchk" class="formD">
			<input type="text" class="telchk" name="telchk" maxlength="5" placeholder="* 인증번호" >
            <button type="button" class="tagbarBT" onclick="mypage_telchk()">본인인증</button>
		</form>
	</fieldset>
    </div>
</body>
</html>
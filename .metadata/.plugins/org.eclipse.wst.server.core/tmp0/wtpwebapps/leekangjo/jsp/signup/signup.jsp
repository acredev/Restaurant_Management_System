<!-- 
회원가입 페이지입니다.
 -->

<%@ page import="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
try
{
	// JDBC 드라이버 연결
	Class.forName("com.mysql.jdbc.Driver");
	String db_address = "jdbc:mysql://127.0.0.1:3306/kyungmin_store";
	String db_username = "root";
	String db_pwd = "root";
	Connection connection = DriverManager.getConnection(db_address, db_username, db_pwd);
	
	// 문자열의 인코딩 방식 설정
	request.setCharacterEncoding("UTF-8");
}
catch (Exception ex)
{
	out.println("페이지 처리 중, 오류가 발생했습니다. 아래의 오류 메시지를 참고하여 페이지 관리자에게 문의 바랍니다. 불편을 드려 죄송합니다.\n" + ex.getMessage());
}
%>
<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width-device-width,initial-scale-1.0,user-scalable=no">
        <title>이강조 회원가입</title>
        <link href="../../css/Header.css" rel="stylesheet" type="text/css">
        <link href="../../css/signup_style.css" rel="stylesheet" type="text/css">
        <script type="text/javascript">
			function checkValue()
			{
				var signupForm = document.signup;
				if(!signupForm.id.value)
				{
					alert("아이디를 입력 후 다시 시도해 주세요.");
					return false;
				}
				if(signupForm.idDuplication.value!="idCheck")
				{
					alert("아이디 중복 체크 후 다시 시도해 주세요.");
					return false;
				}
				if(!signupForm.pwd.value)
				{
					alert("비밀번호를 입력 후 다시 시도해 주세요.");
				}
				if(signupForm.pwd.value != form.pwdcheck.value)
				{
					alert("비밀번호가 일치하지 않습니다. 비밀번호를 동일하게 입력 후 다시 시도해 주세요.");
					return false;
				}
				if(!signupForm.name.value)
				{
					alert("이름을 입력 후 다시 시도해 주세요.");
					return false;
				}
				if(!signupForm.stdid.value)
				{
					alert("학번을 입력 후 다시 시도해 주세요.");
				}
				if(!signupForm.tel.value)
				{
					alert("전화번호를 입력 후 다시 시도해 주세요.");
				}
				if(isNaN(signupForm.tel.value))
				{
					alert("전화번호는 - 를 제외한 숫자만 입력 후 다시 시도해 주세요.");
					return false;
				}
			}
			function idchk()
			{
				if (document.signup.id.value == "" || document.signup.id.value.length < 0)
				{
					alert("아이디 입력 후 시도해 주세요.");
					document.singup.id.focus();
				}
				else
				{
					window.open("signup_idchk.jsp?userid=" + document.signup.id.value, "", "width=500, height=300");
				}
				// 새 창을 열어 새 페이지를 열고, 회원 아이디 정보를 가지고 중복체크 함
				// 아이디가 없으면 알림창이 뜨며 진행되지 않음
				window.open("signup_idchk.jsp?userid=" + document.signup.id.value, "", "width=500, height=300");
			}
			function stdnumchk()
			{
				if (document.signup.stdnum.value == "" || document.signup.stdnum.length < 0)
				{
					alert("학번 입력 후 다시 시도해 주세요.");
					document.signup.stdnum.focus();
				}
				else
				{
					window.open("signup_stdnumchk.jsp?stdnum=" + document.signup.stdnum.value, "", "width=500, height=300");
				}
				//window.open("signup_stdnumchk.jsp?stdnum=" + document.signup.stdnum.value, "", "width=500, height=300");
			}
			function telchk()
			{
				if (document.signup.tel.value == "" || document.signup.tel.length < 0)
				{
					alert("전화번호 입력 후 다시 시도해 주세요.");
					document.signup.tel.focus();
				}
				else
				{
					window.open("signup_telchk.jsp?tel=" + document.signup.tel.value, "", "width=500, height=300");
				}
				//window.open("signup_telchk.jsp?tel=" + document.signup.tel.value, "", "width=500, height=300");
			}
		</script>
    </head>
    <body>
    	<form name="signup" action="signup_send.jsp" method="post">
 	       <header>
 	           <img src="img/Logo4.png" class="Logoimg" onclick ="location.href='../../index.html'">
	           <h1 onclick ="location.href='../login/login_first.jsp'">Login</h1>
   		   </header>
   		   <div id="Loginmain">
   		   <div class="box">
		   		<h1 class="logo">LEEKANGJO</h1>
				<div>
					<h3>아이디</h3>
					<input type="text" placeholder=" *아이디" id="id" class="account" maxlength="10" name="id">						
					<input type="button" class="btn_id_check" onclick="idchk()" value="중복확인">
				</div>
					<p>※아이디는 10자까지 작성가능.</p>
				<div>
					<h3>비밀번호</h3>
					<input type="password" placeholder=" *비밀번호" id="pwd" class="account" maxlength="16" name="pwd">
					<p> 비밀번호는 16자까지 작성가능.</p>
				</div>
				<div>
					<h3>비밀번호 확인</h3>
					<input type="password" placeholder=" *비밀번호 확인" id="pwdcheck" class="account" maxlength="16" name="pwdcheck">
				</div>
				<div>
					<h3>이름</h3>
					<input type="text" placeholder=" *이름" id="name" class="account" maxlength="5" name="name">
				</div>
				<div>
					<h3>학번</h3>
					<input type="text" placeholder=" *학번" id="stdnum" class="account" maxlength="8" name="stdnum">
					<input type="button" class="btn_id_check" onclick="stdnumchk()" value="학번확인">
				</div>
				<div>
					<h3>전화번호</h3>
					<input type="text" placeholder=" *전화번호 ( - 없이 기입하세요.)" id="tel" class="account" maxlength="11" name="tel">
					<input type="button" class="tel_check" onclick="telchk()" value="본인인증">
				</div>
				<div>
					<h3>이메일 주소</h3>
					<input type="text" placeholder="  이메일(선택)" id="email" class="account" maxlength="30" name="email">
				</div>
				<div>
					<label><input type="checkbox" name="agree" value=""> *개인정보 활용 및 회원가입 동의 (필수)</label>
					<button type="submit" id="login" class="account">회원가입</button>
					<p id="alert" class="account"> </p> 
				</div>
          	 </div>
           </div>
        </form>
    </body>
</html>
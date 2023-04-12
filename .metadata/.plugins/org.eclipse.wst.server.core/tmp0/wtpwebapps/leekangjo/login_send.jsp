<%@page import="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
try
{
	//JDBC 드라이버 연결
	Class.forName("com.mysql.jdbc.Driver");
	String db_address = "jdbc:mysql://127.0.0.1:3306/kyungmin_store";
	String db_username = "root";
	String db_pwd = "root";
	Connection connection = DriverManager.getConnection(db_address, db_username, db_pwd);
	
	// 문자열의 인코딩 방식 설정
	request.setCharacterEncoding("UTF-8");
	
	// 파라미터를 통해 넘어온, 사용자의 아이디값과 비밀번호 값을 수령하여 문자열 변수에 저장
	String user_id = request.getParameter("id");
	String user_pwd = request.getParameter("pwd");
	
	// MySQL로 전송하기 위한 쿼리문인 문자열 insertQuery 변수 선언
	// 아래의 쿼리문은 다음 의미를 지님
	// 사용자가 입력한 id, pwd값이 테이블에 기록되어 있는 다른 id, pwd 값과 일치하는지 확인한다.
	String insertQuery = "SELECT name, id, pwd FROM kyungmin_store.member WHERE id='" + user_id + "' and pwd='" + user_pwd + "'";
	
	// SQL 쿼리문을 실행 (MySQL로 전송)하기 위한 객체 선언
	PreparedStatement psmt = connection.prepareStatement(insertQuery);
	
	// 조회된 결과물들을 저장하기 위한 ResultSet 객체 선언
	ResultSet result = psmt.executeQuery();
	
	// 만약... 받아온 정보값들이 존재한다면
	if(result.next() == true)
	{
		// DB에서 조회한 id, pwd값 및 name 값을 각기 문자열 변수에 저장함
		String sent_id = result.getString("id");
		String sent_pwd = result.getString("pwd");
		String sent_name = result.getString("name");
		
		// 만약, 사용자가 입력한 id 및  pwd 값이 테이블에 기록된 id, pwd 값과 일치한다면 로그인이 성공한다.
		if (user_id.equals(sent_id) && user_pwd.equals(sent_pwd))
		{%>
			<head>
				<script type="text/javascript">
					alert("<%=sent_name%> 회원님, 환영합니다.")
					location.href = "test(login_ok).jsp";
				</script>
			</head>
		<%
		}
		// 그게 아니라면, 로그인 실패 alert를 띄워주고 다시 로그인 페이지로 리다이렉트 시킨다.
		else
		{%>
			<head>
				<script type="text/javascript">
					alert("로그인 정보가 일치하지 않습니다. 아이디와 비밀번호를 확인 후, 다시 로그인 바랍니다.");
					location.href = "login.jsp"
				</script>
			</head>
		<%
		}
	}
	// 만약... 받아온 정보값들이 존재하지 않다면
	else
	{
	%>
		<head>
			<script type="text/javascript">
				alert("로그인 정보가 일치하지 않습니다. 비회원의 경우, 회원가입 후 이용 바랍니다.");
				location.href = "login.jsp"
			</script>
		</head>
	<%
	}
}
catch (Exception ex)
{
	out.println("로그인 중 오류가 발생했습니다. 아래의 오류 메시지를 참고하여 페이지 관리자에게 문의 바랍니다. 불편을 드려 죄송합니다.\n" + ex.getMessage());
}
%>
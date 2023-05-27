<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>가게추가</h1>
	<h2>가게 고유번호는 자동생성됩니다.</h2>
	<form action="store_add_send.jsp" method="post" enctype="multipart/form-data">
		가게이름 : <input type="text" name="store_name"><br>
		전화번호 : <input type="number" name="store_tel"><br>
		영업시간 : <input type="time" name="business_hour_open"> ~ <input type="time" name="business_hour_close"><br>
		주소 : <input type="text" name="store_address"><br>
		공지(빈칸가능) : <input type="text" name="store_notice"><br>
		가게메인이미지 : <input type="file" name="store_img"><br>
		<input type="submit" value="업로드">
	</form>
</body>
</html>
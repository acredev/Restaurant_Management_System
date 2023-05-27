<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>메뉴추가</h1>
	<form action="menu_add_send.jsp" method="post" enctype="multipart/form-data">
		가게고유번호 : <input type="text" name="store_num"><br>
		메뉴이름 : <input type="text" name="menu_name"><br>
		메뉴가격 : <input type="text" name="menu_price"><br>
		메뉴이미지 : <input type="file" name="menu_img"><br>
		<input type="submit" value="업로드">
	</form>
</body>
</html>
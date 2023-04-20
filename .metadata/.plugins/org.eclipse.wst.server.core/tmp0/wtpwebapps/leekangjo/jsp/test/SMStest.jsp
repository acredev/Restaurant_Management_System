<%@page import="java.util.HashMap"%>
<%@page import="org.json.simple.JSONObject" %>
<%@page import="net.nurigo.java_sdk.api.Message" %>
<%@page import="net.nurigo.java_sdk.exceptions.CoolsmsException" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>문자전송 테스트</h1>
	<p>내용</p>
	<input type="text" name="testTxt" id="testTxt">
	<p>받는사람</p>
	<input type="text" name="tel" id="tel">
	<input type="button" name="send" id="send">
</body>
</html>
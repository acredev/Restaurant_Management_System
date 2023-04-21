<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <title>이강조 회원가입</title>
        <link href="../../css/signup_second.css" rel="stylesheet">
        <link href="../../css/buttonST.css" rel="stylesheet">
        <script src="https://kit.fontawesome.com/fd1cbb6da4.js" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
        <script src="../../js/signup.js"></script>
        <script src="../../js/pwE.js"></script>
    </head>	
    <body>
        <div id="box">
            <div class="boxtitle">
                <img src="../../img/Logo4.png" alt="" class="loginImg" onclick="location.href='../../index.html'">
                <h1>회원가입</h1>
            </div>
            <div class="form-item">
               <input type="text" id="inpName" placeholder="* 이름">
            </div>
            <div class="form-item">
               <input type="text" id="inpName" placeholder="* 이메일">
            </div>
            <div class="form-item" id="EyeBox">
               <input type="password" id="inpName" placeholder="* 비밀번호">
                <i class="fa-solid fa-eye"></i>
            </div>
            <div class="form-item" id="EyeBox">
               <input type="password" id="inpName" placeholder="* 비밀번호 확인">
                <i class="fa-solid fa-eye"></i>
            </div>
            <div class="block">
            <button class="tagbarBT" id="nextBT" onclick="location.href='login_first.jsp'">다음</button>
            </div>
        </div>
    </body>
</html>

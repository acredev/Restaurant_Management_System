<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <title>이강조 회원가입</title>
        <link href="../../css/signup_first.css" rel="stylesheet">
        <link href="../../css/buttonST.css" rel="stylesheet">
        <script src="../../js/signup.js"></script>
    </head>
    <body>
        <div id="box">
            <div class="boxtitle">
                <img src="../../img/Logo4.png" alt="" class="loginImg" onclick="../../location.href='index.html'">
                <h1>회원가입</h1>
            </div>
            <div class="form-item">
               <input type="text" id="inpName" placeholder="* 아이디" maxlength="10">
               <button class="tagbarBT">중복확인</button>
            </div>
            <div class="form-item">
               <input type="number" id="inpName" placeholder="* 학번" oninput="maxLengthCheck1(this)" maxlength="8">
               <button class="tagbarBT">학번확인</button>
            </div>
            <div class="form-item">
               <input type="number" id="inpName" placeholder="* 전화번호" oninput="maxLengthCheck2(this)" maxlength="11">
               <button class="tagbarBT">본인인증</button>
               <div class="block"><button class="tagbarBT" id="nextBT" onclick="location.href='signup2.html'">다음</button></div>
            </div>
        </div>
    </body>
</html>
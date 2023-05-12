<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 
메인 화면입니다.
 -->

<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width-device-width,initial-scale-1.0,user-scalable=no">
        <title>LEEKANGJO - 경민대 밥집</title>
        <!-- 페이지 디자인을 위한 CSS 선언 -->
        <link href="css/index.css" rel="stylesheet" type="text/css">
        <link href="css/Header.css" rel="stylesheet" type="text/css">
        <link href="css/buttonST.css" rel="stylesheet" type="text/css">
        <link rel="icon" href="./img/favicon1.png">
    </head>
    <body>
        <header>
            <img src="img/MainLogo.png" class="Logoimg" onclick ="location.href='index.jsp'">
            <h1 onclick ="location.href='jsp/login/login_first.jsp'">Login</h1>
        </header>
        <div id="tagbar">
            <button class="tagbarBT">영업중</button>
            <button class="tagbarBT">예약</button>
        </div>
        <div id="wrapper">
            <div id="columns">
                <div class="card" onclick ="location.href='store1_detail.html'">
                    <img src="img/aunt_2.png">
                    <p>이모네</p>
                    <a>예약 가능 | 포장 가능 | 소요시간 10~15분</a>
                    <span>대기상황 : 2</span>
                </div>
                <div class="card" onclick="alert('영업 준비중입니다.')">
                    <img src="img/jingok.png">
                    <p>진국</p>
                    <a>예약 가능 | 포장 가능 | 소요시간 5~10분</a>
                    <span> -브레이크 타임-</span>
                </div>
                <div class="card">
                    <img src="img/japan.png">
                    <p>카로꼬</p>
                    <a>예약 가능 | 포장 가능 | 소요시간 5~10분</a>
                </div>
                <div class="card">
                    <img src="img/bobsway.png">
                    <p>밥스웨이</p>
                    <a>예약 가능 | 포장 가능 | 소요시간 5~10분</a>
                </div>
                <div class="card">
                    <img src="img/china.png">
                    <p>면박사</p>
                    <a>예약 가능 | 포장 가능 | 소요시간 5~10분</a>
                </div>
                <div class="card">
                    <img src="img/bonggousse.png">
                    <p>봉구스밥버거 경민대점</p>
                    <a>예약 가능 | 포장 가능 | 소요시간 5~10분</a>
                </div>
                <div class="card">
                    <img src="img/moms_touch.png">
                    <p>맘스터치 의정부경민점</p>
                    <a>예약 가능 | 포장 가능 | 소요시간 10~20분</a>     
                </div>
                <div class="card">
                    <img src="img/tomato.png">
                    <p>토마토도시락 경민대점</p>
                    <a>예약 가능 | 포장 가능 | 소요시간 5~10분</a>
                </div>
                <div class="card">
                    <img src="img/bd.png">
                    <p>뽕뜨락피자 경민대점</p>
                    <a>예약 가능 | 포장 가능 | 소요시간 10~20분</a>
                </div>
            </div>
        </div>
    </body>
</html>
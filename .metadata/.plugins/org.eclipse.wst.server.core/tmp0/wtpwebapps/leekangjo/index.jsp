<!-- 
메인 화면입니다.
 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//login_second.jsp 에서 겨처왔을 경우,
	//파라미터를 통해 받아온 아이디 값을 변수에 저장
	String user_id = request.getParameter("id");
	//세션에 MEMBERID 객체를 저장 (user_id 정보를 가져옴)
	session.setAttribute("MEMBERID", user_id);
	//MEMBERID 객체의 값을 memberId 문자열 변수에 저장
	String memberId = (String)session.getAttribute("MEMBERID");
	//만약, memberId 값이 null 이면 false(비로그인 상태)
	//memberId 값이 무언가 있다면 true(로그인 상태)
	boolean login = memberId == null ? false : true;
%>

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
            <%
            	// 만약, 로그인 상태가 true라면
            	if (login)
            	{%>
            		<h1 onclick ="location.href='jsp/login/login_first.jsp'">로그아웃 (로그인아이디 : <%=memberId %>)</h1>
            	<%
            	}
            	// 로그인 상태가 false라면
            	else
            	{%>
            		<h1 onclick ="location.href='jsp/login/login_first.jsp'">Login</h1>
            	<%
            	}
            %>
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>info</title>
        <link rel="icon" href="/leekangjo/img/favicon1.png">
        <link href="/leekangjo/css/seatCSS.css" rel="stylesheet">
    </head>
    <body>
    <%
    request.setCharacterEncoding("UTF-8");
    
    String store_num = request.getParameter("store_num");
    %>
        <h1>좌석 예약</h1>
        <input type="hidden" name="store_num" id="store_num" value="<%=store_num %>">
        <img src="/leekangjo/img/seatimg.png">
        <div>
            <button name="1" type="button" class="seatbtn" id="seat1" onclick="showPopup();" ></button>
            <button name="2" type="button" class="seatbtn" id="seat2" onclick="alert('Btn_2_Click!!');" ></button>
            <button name="3" type="button" class="seatbtn" id="seat3" onclick="alert('Btn_3_Click!!');" ></button>
            <button name="4" type="button" class="seatbtn" id="seat4" onclick="alert('Btn_4_Click!!');" style=""></button>
            <button name="5" type="button" class="seatbtn" id="seat5" onclick="alert('Btn_5_Click!!');" ></button>
            <button name="6" type="button" class="seatbtn" id="seat6" onclick="alert('Btn_6_Click!!');" ></button>
            <button name="7" type="button" class="seatbtn" id="seat7" onclick="alert('Btn_7_Click!!');" ></button>
            <button name="8" type="button" class="seatbtn" id="seat8" onclick="alert('Btn_8_Click!!');" ></button>
            <button name="9" type="button" class="seatbtn" id="seat9" onclick="alert('Btn_9_Click!!');" ></button>
            <button name="10" type="button" class="seatbtn" id="seat10" onclick="alert('Btn_10_Click!!');" ></button>
            <button name="11" type="button" class="seatbtn" id="seat11" onclick="alert('Btn_11_Click!!');" ></button>
            <button name="12" type="button" class="seatbtn" id="seat12" onclick="alert('Btn_12_Click!!');" ></button>
            <button name="13" type="button" class="seatbtn" id="seat13" onclick="alert('Btn_13_Click!!');" ></button>
            <button name="14" type="button" class="seatbtn" id="seat14" onclick="alert('Btn_14_Click!!');" ></button>
        </div>
        
        <script src="/leekangjo/js/detailSeatPopup.js"></script>
    </body>
</html>
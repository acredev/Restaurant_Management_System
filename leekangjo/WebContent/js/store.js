window.onload = function(){
	var store_num = document.getElementById("store_num");
    document.getElementById("iframeSec").src = "./detail/info.jsp?store_num=" + store_num.value;
}

function ChnInfo(){
	var store_num = document.getElementById("store_num");
    document.getElementById("iframeSec").src = "./detail/info.jsp?store_num=" + store_num.value;
}

function ChnMenu(){
	var store_num = document.getElementById("store_num");
    document.getElementById("iframeSec").src = "./detail/menu.jsp?store_num=" + store_num.value;
}

function ChnSeat(){
    document.getElementById("iframeSec").src = "./detail/seat.jsp?store_num" + store_num.value;
}
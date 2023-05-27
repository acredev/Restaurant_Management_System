window.onload = function(){
	var store_num = document.getElementById("store_num");
    document.getElementById("iframeSec").src = "/leekangjo/jsp/store/detail/info.jsp?store_num=" + store_num.value;
}

function ChnInfo(){
	var store_num = document.getElementById("store_num");
    document.getElementById("iframeSec").src = "/leekangjo/jsp/store/detail/info.jsp?store_num=" + store_num.value;
}

function ChnMenu(){
	var store_num = document.getElementById("store_num");
    document.getElementById("iframeSec").src = "/leekangjo/jsp/store/detail/menu.jsp?store_num=" + store_num.value;
}

function ChnSeat(){
	var store_num = document.getElementById("store_num");
    document.getElementById("iframeSec").src = "/leekangjo/jsp/store/detail/seat.jsp?store_num=" + store_num.value;
}
function detail_click()
{
	var store_num = document.getElementById("store_num");
	window.open("./jsp/store/store.jsp?store_num=" + store_num.value);
	alert(store_num.value);;
}

function mypage_click()
{
	var user_id = document.getElementById("user_id");
	window.open("./jsp/mypage/mypage.jsp?user_id=" + user_id.value);
}
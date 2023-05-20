function detail_click()
{
	var store_num = document.getElementById("store_num");
	window.open("./jsp/store/store.jsp?store_num=" + store_num.value, "_self");
	alert(store_num.value);;
}

function mypage_click(user_id)
{
	var index_form = document.index;
	var user_id = document.getElementById("user_id");
	var mypage = "./jsp/mypage/mypage.jsp";
	
	window.open("", "_self");
	
	index_form.action = mypage;
	index_form.target = "_self";
	index_form.user_id.vaue = user_id;
	index_form.submit();
}
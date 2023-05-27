function showPopup(){
document.getElementById("store_num");
document.getElementById("seat1");   

popupWindow = window.open("choose_menu.jsp?store_num=" + store_num.value + "&&seat=" + seat1.name ,"좌석예약팝업",",scrollbars=yes,resizable");
    popupWindow.resizeTo(500,800);
		popupWindow.onresize=(_=>{
			popupWindow.resizeTo(500,800);
		})
    
}
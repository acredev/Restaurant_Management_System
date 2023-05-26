function showPopup(){
   popupWindow = window.open("choose_menu.jsp","좌석예약팝업",",scrollbars=yes,resizable");
    popupWindow.resizeTo(500,800);
		popupWindow.onresize=(_=>{
			popupWindow.resizeTo(500,800);
		})
    
}
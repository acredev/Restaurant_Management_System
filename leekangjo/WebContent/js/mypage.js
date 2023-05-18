function myinfo_click()
{
	var user_id = document.getElementById("user_id");
	window.open("./myinfo.jsp?user_id=" + user_id.value);
}

function myinfo_telchk()
{
	var user_tel = document.getElementById("user_tel");
	var tel_num_chk = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;
	
	if (user_tel.value == "")
	{
		alert("휴대폰 번호가 입력되지 않았습니다. 휴대폰 번호를 입력하고, 다시 시도해 주세요.");
		user_tel.focus();
	}
	else if (!tel_num_chk.test(user_tel.value))
	{
		alert("휴대폰 번호 형식에 맞지 않습니다. 휴대폰 번호 입력 시, 하이픈 (-) 제거 후 숫자만 입력 바랍니다.");
	}
	else
	{
		popupWindow = window.open("mypage_telchk.jsp?user_tel=" + user_tel.value, "_blank","resizeable","toolbar=no");
		popupWindow.resizeTo(500,600);
		popupWindow.onresize=(_=>{
			popupWindow.resizeTo(500,600);
		})	
	}
}

function myinfo_emailchk()
{
	var user_email = document.getElementById("user_email");
	var email_chk = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	if (user_email.value == "")
	{
		alert("이메일 입력 후 다시 시도해 주세요.");
		email.focus();
	}
	else if (!email_chk.test(user_email.value))
	{
		alert("이메일 형식에 맞지 않습니다. 이메일을 올바르게 입력 후 다시 시도해 주세요.");
		user_email.focus();
	}
	else
	{
		popupWindow = window.open("mypage_emailchk.jsp?user_email=" + user_email.value, "_blank","resizeable","toolbar=no");
		popupWindow.resizeTo(500,600);
		popupWindow.onresize=(_=>{
			popupWindow.resizeTo(500,600);
		})	
	}
}
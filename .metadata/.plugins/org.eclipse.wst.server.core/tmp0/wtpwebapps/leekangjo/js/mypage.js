function myinfo_click()
{
	var user_id = document.getElementById("user_id");
	popupWindow = window.open("/leekangjo/myinfo/myinfo_pwdchk.jsp?user_id=" + user_id.value, "_blank","resizeable","toolbar=no");
		popupWindow.resizeTo(500,600);
		popupWindow.onresize=(_=>{
			popupWindow.resizeTo(500,600);
		})
}

function myinfo_pwdchk()
{
	document.myinfo_pwdchk.submit();
}

function myinfo_pwdchange()
{
	var user_id = document.getElementById("user_id");

	popupWindow = window.open("myinfo_pwdchange.jsp?user_id=" + user_id.value, "_blank","resizeable","toolbar=no");
	popupWindow.resizeTo(500,650);
	popupWindow.onresize=(_=>{
		popupWindow.resizeTo(500,650);
	});
}

function myinfo_pwdchange_chk()
{
	var pwd = document.pwd_change.pwd.value;
	var pwdsame = document.pwd_change.pwdsame.value;
	var pwd_chk = /^[a-zA-Z0-9]{6,16}$/;
	
	if (!pwd_chk.test(pwd))
	{
		window.alert("비밀번호는 6글자 이상, 16글자 이하로만 사용 가능합니다.");
		document.pwd_change.pwd.focus();
	}
	else
	{
		if (pwd!= "" && pwdsame != "")
		{
			if (pwd == pwdsame)
			{
				document.getElementById("pwdsame_result").value = "비밀번호가 일치합니다.";
				document.getElementById("pwdsame_result").style.color = "blue";
				document.getElementById("isPwdSame").value = "yes";
			}
			else
			{
				document.getElementById("pwdsame_result").value = "비밀번호가 일치하지 않습니다.";
				document.getElementById("pwdsame_result").style.color = "red";
				document.getElementById("isPwdSame").value = "no";
			}
		}
	}
}

function myinfo_pwdchange_finish()
{
	var isPwdSame = document.getElementById("isPwdSame");
	
	if (isPwdSame.value == "no")
	{
		alert("비밀번호가 일치하지 않습니다. 확인 후 다시 시도해 주세요.");
	}
	else
	{
		alert("비밀번호 변경사항이 발생했습니다. '나의 정보 → 저장' 버튼을 눌러 변경사항을 저장해 주세요.");
		opener.document.myinfo.isPwdChange.value = document.pwd_change.pwd.value;
		opener.document.myinfo.pwd_change.disabled = "disabled";
		opener.document.myinfo.pwd_change.style.backgroundColor = "#DDDDDD";
		opener.document.myinfo.pwd_change.innerText = "비밀번호 변경완료";
		opener.document.myinfo.pwd_change.style.color = "blue";
		close();
	}
}

function myinfo_telchange()
{
	popupWindow = window.open("myinfo_telchange.jsp", "_blank","resizeable","toolbar=no");
	popupWindow.resizeTo(500,600);
	popupWindow.onresize=(_=>{
	popupWindow.resizeTo(500,600);
	})	
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
		popupWindow = window.open("myinfo_emailchange.jsp", "_blank","resizeable","toolbar=no");
		popupWindow.resizeTo(500,600);
		popupWindow.onresize=(_=>{
			popupWindow.resizeTo(500,600);
		})	
	}
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
		document.form_telchange.submit();
	}
}


function myinfo_saveBtn()
{
	
	var user_name = document.getElementById("user_name");
	var user_email = document.getElementById("user_email");
	var user_tel = document.getElementById("user_tel");
	
	var isEmailChange = document.getElementById("isEmailChange");
	var isTelChange = document.getElementById("isTelChange");
	var isPwdChange = document.getElementById("isPwdChange");
	
	
	if (isEmailChange.value == "no" && isTelChange.value == "no" && isPwdChange.value == "no")
	{
		alert("회원정보를 수정할 변경사항이 존재하지 않습니다. 확인 후 다시 시도해 주세요.");
	}
	else
	{
		if (isEmailChange.value == "yes" && isTelChange.value == "no" && isPwdChange.value == "no")
		{
			alert(user_name.value + " 회원님의 이메일 주소가 변경되었습니다.\n[변경내용]이메일 주소 : " + user_email.value);
			document.myinfo.submit();
		}
		else if (isEmailChange.value == "no" && isTelChange.value == "yes" && isPwdChange.value == "no")
		{
			alert(user_name.value + " 회원님의 휴대폰 번호가 변경되었습니다.\n[변경내용]휴대폰 번호 : " + user_tel.value);
			document.myinfo.submit();
		}
		else if (isEmailChange.value == "no" && isTelChange.value == "no" && isPwdChange.value != "no")
		{
			alert(user_name.value + " 회원님의 비밀번호 변경이 완료되었습니다.");
			document.myinfo.submit();
		}
		else if (isEmailChange.value == "yes" && isTelChange.value == "yes" && isPwdChange.value == "no")
		{
			alert(user_name.value + " 회원님의 이메일 주소와 휴대폰 번호가 변경되었습니다.\n[변경내용]휴대폰 번호 : " + user_tel.value + "\n이메일 주소 : " + user_email.value);
			document.myinfo.submit();
		}
		else if (isEmailChange.value == "yes" && isTelChange.value == "no" && isPwdChange.value != "no")
		{
			alert(user_name.value + " 회원님의 이메일 주소와 비밀번호가 변경되었습니다.\n[변경내용]이메일 주소 : " + user_email.value);
			document.myinfo.submit();
		}
		else if (isEmailChange.value == "no" && isTelChange.value == "yes" && isPwdChange.value != "no")
		{
			alert(user_name.value + " 회원님의 휴대폰 번호와 비밀번호가 변경되었습니다.\n[변경내용]휴대폰 번호 : " + user_tel.value);
			document.myinfo.submit();
		}
		else
		{
			alert("오류가 발생했습니다. 처음부터 다시 시도 바랍니다.");
			close();
		}
	}	
}

function myinfo_remove()
{
	var user_id = document.getElementById("user_id");
	popupWindow = window.open("/leekangjo/myinfo_remove.jsp?user_id=" + user_id.value, "_blank","resizeable","toolbar=no");
		popupWindow.resizeTo(500,600);
		popupWindow.onresize=(_=>{
			popupWindow.resizeTo(500,600);
		})	
}

function myinfo_remove_chk()
{
	document.myinfo_remove.submit();
}
function maxLengthCheck1(object)
{
    if (object.value.length > object.maxLength)
{
      object.value = object.value.slice(0, object.maxLength);
    }    
  }

function maxLengthCheck2(object)
{
    if (object.value.length > object.maxLength)
{
      object.value = object.value.slice(0, object.maxLength);
    }    
  }

function signup_first_idchk()
{
	var id = document.getElementById("id");
	var id_chk = /^[a-z]+[a-z0-9]{5,19}$/;
	if (id.value == "")
	{
		alert("아이디 입력 후 다시 시도해 주세요.");
		id.focus();
	}
	else if (!id_chk.test(id.value))
	{
		alert("아이디에는 영문자, 숫자 조합 5자리 이상 10자리 이하만 입력 가능합니다. 다시 시도해 주세요.");
		id.focus();
	}
	else if (id.value.length <= 4)
	{
		alert("아이디는 5자리 이상, 10자리 이하로 입력 바랍니다.");
		id.focus();
	}
	else
	{
		hiddenframe.location.href="../signup/signup_idchk.jsp?id=" + document.signup_first.id.value;
	}
}

function signup_first_idchk_result()
{
	opener.document.signup_first.id.value = document.form_idchk.id.value;
	opener.document.signup_first.idchk.value = "id_chkyes";
	opener.document.signup_first.id.readOnly = true;
	opener.document.signup_first.id.style.color = "blue";
	opener.document.signup_first.id.style.onfocus = "this.blur();";
	window.close();
}

function signup_first_stdnumchk()
{
	var stdnum = document.getElementById("stdnum");
	if (stdnum.value == "")
	{
		alert("학번 입력 후 다시 시도해 주세요.");
		stdnum.focus();
	}
	else if (stdnum.value.length <= 7)
	{
		alert("경민대학교 학번은 8자리입니다. 올바르게 입력 후 다시 시도해 주세요.");
		stdnum.focus();
	}
	else
	{
		hiddenframe2.location.href="/leekangjo/jsp/signup/signup_stdnumchk.jsp?stdnum=" + document.signup_first.stdnum.value;
	}
}

function signup_first_stdnumchk_result()
{
	opener.document.signup_first.stdnum.value = document.form_stdnumchk.stdnum.value;
	opener.document.signup_first.stdnumchk.value = "stdnum_chkyes";
	opener.document.signup_first.stdnum.readOnly = true;
	opener.document.signup_first.stdnum.style.color = "blue";
	opener.document.signup_first.stdnum.style.onfocus = "this.blur();";
	window.close();
}

function signup_first_emailchk()
{
	var email = document.getElementById("email");
	var email_chk = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	if (email.value == "")
	{
		alert("이메일 입력 후 다시 시도해 주세요.");
		email.focus();
	}
	else if (!email_chk.test(email.value))
	{
		alert("이메일 형식에 맞지 않습니다. 이메일을 올바르게 입력 후 다시 시도해 주세요.");
		email.focus();
	}
	else
	{
		popupWindow = window.open("signup_emailchk.jsp?email=" + email.value, "_blank","resizeable","toolbar=no");
		popupWindow.resizeTo(500,600);
		popupWindow.onresize=(_=>{
			popupWindow.resizeTo(500,600);
		})	
	}
}

function signup_first_emailchk_result()
{
	opener.document.signup_first.email.value = document.form_emailchk.email.value;
	opener.document.signup_first.emailchk.value = "email_chkyes";
	opener.document.signup_first.email.readOnly = true;
	opener.document.signup_first.email.style.color = "blue";
	opener.document.signup_first.email.style.onfocus = "this.blur();";
	window.close();
}

function signup_first_telchk()
{
	var tel = document.getElementById("tel");
	var tel_num_chk = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;
	if (tel.value == "")
	{
		alert("휴대폰 번호가 입력되지 않았습니다. 휴대폰 번호를 입력하고, 다시 시도해 주세요.");
		tel.focus();
	}
	else if (!tel_num_chk.test(tel.value))
	{
		alert("휴대폰 번호 형식에 맞지 않습니다. 휴대폰 번호 입력 시, 하이픈 (-) 제거 후 숫자만 입력 바랍니다.");
		tel.focus();
	}
	else
	{
		popupWindow = window.open("signup_telchk.jsp?tel=" + tel.value, "_blank","resizeable","toolbar=no");
		popupWindow.resizeTo(500,600);
		popupWindow.onresize=(_=>{
			popupWindow.resizeTo(500,600);
		})		
	}
}

function signup_first_nextBT()
{
	var idchk = document.getElementById('hiddenframe').contentWindow.document.getElementById("idchk_result");
	var stdnumchk = document.getElementById('hiddenframe2').contentWindow.document.getElementById("stdnumchk_result");
	var telchk = document.getElementById("telchk");
	var emailchk = document.getElementById("emailchk");
	
	if (idchk.value == "id_chkno" && stdnumchk.value == "stdnum_chkno" && telchk.value == "tel_chkno" && emailchk.value == "email_chkno")
	{
		alert("모든 인증이 완료되지 않았습니다. 모든 인증과정을 수행 후 다시 시도해 주세요.");
	}
	else if (idchk.value == "id_chkyes" && stdnumchk.value == "stdnum_chkno" && telchk.value == "tel_chkno" && emailchk.value == "email_chkno")
	{
		alert("학번 인증과 휴대폰 번호, 이메일 본인인증이 완료되지 않았습니다. 모든 인증과정을 수행 후 다시 시도해 주세요.");
	}
	else if (idchk.value == "id_chkno" && stdnumchk.value == "stdnum_chkyes" && telchk.value == "tel_chkno" && emailchk.value == "email_chkno")
	{
		alert("아이디 중복확인과 휴대폰 번호, 이메일 본인인증이 완료되지 않았습니다. 모든 인증과정을 수행 후 다시 시도해 주세요.");
	}
	else if (idchk.value == "id_chkno" && stdnumchk.value == "stdnum_chkno" && telchk.value == "tel_chkyes" && emailchk.value == "email_chkno")
	{
		alert("아이디 중복확인과 학번 인증, 이메일 본인인증이 완료되지 않았습니다. 모든 인증과정을 수행 후 다시 시도해 주세요.");
	}
	else if (idchk.value == "id_chkno" && stdnumchk.value == "stdnum_chkno" && telchk.value == "tel_chkno" && emailchk.value == "email_chkyes")
	{
		alert("아이디 중복확인과 학번 인증, 휴대폰 번호 본인인증이 완료되지 않았습니다. 모든 인증과정을 수행 후 다시 시도해 주세요.");
	}
	else if (idchk.value == "id_chkyes" && stdnumchk.value == "stdnum_chkyes" && telchk.value == "tel_chkyes" && emailchk.value == "email_chkno")
	{
		alert("이메일 본인인증이 완료되지 않았습니다. 모든 인증과정을 수행 후 다시 시도해 주세요.");
	}
	else if (idchk.value == "id_chkyes" && stdnumchk.value == "stdnum_chkyes" && telchk.value == "tel_chkno" && emailchk.value == "email_chkyes")
	{
		alert("휴대폰 번호 본인인증이 완료되지 않았습니다. 모든 인증과정을 수행 후 다시 시도해 주세요.");
	}
	else if (idchk.value == "id_chkyes" && stdnumchk.value == "stdnum_chkno" && telchk.value == "tel_chkyes" && emailchk.value == "email_chkyes")
	{
		alert("학번 인증이 완료되지 않았습니다. 모든 인증과정을 수행 후 다시 시도해 주세요.");
	}
	else if (idchk.value == "id_chkno" && stdnumchk.value == "stdnum_chkyes" && telchk.value == "tel_chkyes" && emailchk.value == "email_chkyes")
	{
		alert("아이디 중복확인이 완료되지 않았습니다. 모든 인증과정을 수행 후 다시 시도해 주세요.");
	}
	else if (idchk.value == "id_chkno" || stdnumchk.value == "stdnum_chkno" || telchk.value == "tel_chkno" && emailchk.value == "email_chkno")
	{
		alert("하나 이상의 인증과정이 정상 수행되지 않았습니다. 모든 인증과정을 수행 후 다시 시도해 주세요.");
	}
	else
	{
		document.signup_first.submit();
	}
}

function signup_second_pwdchk()
{
	var pwd = document.signup_second.pwd.value;
	var pwdsame = document.signup_second.pwdsame.value;
	var pwd_chk = /^[a-zA-Z0-9]{6,16}$/;
	
	if (!pwd_chk.test(pwd))
	{
		window.alert("비밀번호는 6글자 이상, 16글자 이하로만 사용 가능합니다.");
		document.signup_second.pwd.focus();
	}
	else
	{
		if (pwd != "" && pwdsame != "")
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

function signup_second_sendBT()
{
	var name = document.getElementById("name");
	var isPwdSame = document.getElementById("isPwdSame");
	
	if (name.value == "" && isPwdSame.value == "no")
	{
		alert("이름이 입력되지 않았으며, 비밀번호가 서로 일치하지 않습니다. 확인 후 다시 시도해 주세요.");
	}
	else if (name.value != "" && isPwdSame.value == "no")
	{
		alert("비밀번호가 서로 일치하지 않습니다. 확인 후 다시 시도해 주세요.");
	}
	else if (name.value == "" && isPwdSame.value != "no")
	{
		alert("이름이 입력되지 않았습니다. 확인 후 다시 시도해 주세요.");
	}
	else if (name.value == "" || isPwdSame.value == "no")
	{
		alert("하나 이상의 항목이 정상적으로 입력되지 않았습니다. 확인 후 다시 시도해 주세요.");
	}
	else
	{
		alert("회원가입이 완료되었습니다. 로그인 후 이용해 주세요.");
		document.signup_second.submit();
	}
}
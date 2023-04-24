function maxLengthCheck1(object){
    if (object.value.length > object.maxLength){
      object.value = object.value.slice(0, object.maxLength);
    }    
  }

function maxLengthCheck2(object){
    if (object.value.length > object.maxLength){
      object.value = object.value.slice(0, object.maxLength);
    }    
  }

function signup_first_idchk()
{
	var id = document.getElementById("id");
	if (id.value == "")
	{
		alert("아이디 입력 후 다시 시도해 주세요.");
		id.focus();
		return false;
	}
	else if (id.value != /^[a-z]+[a-z0-9]{5,19}$/g)
	{
		alert("아이디에는 한글 또는 특수문자가 들어갈 수 없습니다. 영문자 또는 숫자 조합으로 입력 바랍니다.");
		id.focus();
		return false;
	}
	else if (id.value.length <= 4)
	{
		alert("아이디는 5자리 이상, 10자리 이하로 입력 바랍니다.");
		id.focus();
		return false;
	}
	else
	{
		window.open("../signup/signup_idchk.jsp?id=" + document.signup_first.id.value, "", "width=500, height=300");
		return true;
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
		return false;
	}
	else if (stdnum.value.length <= 7)
	{
		alert("경민대학교 학번은 8자리입니다. 올바르게 입력 후 다시 시도해 주세요.");
		stdnum.focus();
		return false;
	}
	else
	{
		window.open("../signup/signup_stdnumchk.jsp?stdnum=" + document.signup_first.stdnum.value, "", "width=500, height=300");
		return true;
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
		//window.open("signup_telchk.jsp?tel=" + tel.value, "", "width=500, height=300");
		alert("ok");
	}
}

function signup_first_nextBT()
{
	var id = document.getElementById("id");
	var stdnum = document.getElementById("stdnum");
	var tel = document.getElementById("tel");
	var idchk = document.getElementById("idchk");
	var stdnumchk = document.getElementById("stdnumchk");
	var telchk = document.getElementById("telchk");
	
	if (idchk.value == "id_chkno" || stdnumchk.value == "stdnum_chkno" || telchk.value == "tel_chkno")
	{
		alert("인증이 완료되지 않았습니다. 모든 인증과정을 수행 후 다시 시도해 주세요.");
		return false;
	}
	else if (idchk.value == "id_chkyes" || stdnumchk.value == "stdnum_chkno" || telchk.value == "tel_chkno")
	{
		alert("학번 인증과 휴대폰 번호 본인인증이 완료되지 않았습니다. 모든 인증과정을 수행 후 다시 시도해 주세요.");
		return false;
	}
	else if (idchk.value == "id_chkno" || stdnumchk.value == "stdnum_chkyes" || telchk.value == "tel_chkno")
	{
		alert("아이디 중복확인과 휴대폰 번호 본인인증이 완료되지 않았습니다. 모든 인증과정을 수행 후 다시 시도해 주세요.");
		return false;
	}
	else if (idchk.value == "id_chkno" || stdnumchk.value == "stdnum_chkno" || telchk.value == "tel_chkyes")
	{
		alert("아이디 중복확인과 학번 인증이 완료되지 않았습니다. 모든 인증과정을 수행 후 다시 시도해 주세요.");
		return false;
	}
	else if (idchk.value == "id_chkyes" || stdnumchk.value == "stdnum_chkyes" || telchk.value == "tel_chkno")
	{
		alert("휴대폰 번호 본인인증이 완료되지 않았습니다. 모든 인증과정을 수행 후 다시 시도해 주세요.");
		return false;
	}
	else if (idchk.value == "id_chkyes" || stdnumchk.value == "stdnum_chkno" || telchk.value == "tel_chkyes")
	{
		alert("학번 인증이 완료되지 않았습니다. 모든 인증과정을 수행 후 다시 시도해 주세요.");
		return false;
	}
	else if (idchk.value == "id_chkno" || stdnumchk.value == "stdnum_chkyes" || telchk.value == "tel_chkyes")
	{
		alert("아이디 중복확인이 완료되지 않았습니다. 모든 인증과정을 수행 후 다시 시도해 주세요.");
		return false;
	}
	else
	{
		document.signup_first.submit();
		return true;
	}
}
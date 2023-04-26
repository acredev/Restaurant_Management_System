var loginBox = document.querySelector('.outBox');
var loginInputBox = document.querySelector('#tell');
    loginInputBox.addEventListener('keyup', function(){
        if(!loginInputBox.value == ''){
            loginBox.classList.add('existence');   
        }else{
            loginBox.classList.remove('existence');   
        }
    });

function maxLengthCheck(object){
    if (object.value.length > object.maxLength){
      object.value = object.value.slice(0, object.maxLength);
    }    
  }

function find_id_first_check()
{
	var tel = document.getElementById("tell");
	var tel_num_chk = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;
	
	if (tell.value == "")
	{
		alert("전화번호 입력 후 다시 시도해 주세요. 전화번호는 숫자만 입력 가능합니다.");
		tell.focus();
	}
	else if (!tel_nuk_chk.test(tel.value))
	{
		alert("휴대폰 번호 형식에 맞지 않습니다. 휴대폰 번호 입력 시, 하이픈 (-) 제거 후 숫자만 입력 바랍니다.");
		tel.focus();
	}
	else
	{
		document.find_id_first.submit();
	}
}
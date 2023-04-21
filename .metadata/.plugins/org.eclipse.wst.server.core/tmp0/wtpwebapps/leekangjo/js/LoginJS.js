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

function login_first_check()
{
	var id = document.getElementById("tell");
	
	if (id.value == "")
	{
		alert("아이디 입력 후 다시 시도해 주세요.");
		tell.focus();
		return false;
	}
	else
	{
		document.login_first.submit();
		return true;
	}
}

function login_second_check()
{
	var pwd = document.getElementById("tell");
	
	if (pwd.value == "")
	{
		alert("비밀번호 입력 후 다시 시도해 주세요.");
		pwd.focus();
		return false;
	}
	else
	{
		document.login_second.submit();
		return true;
	}
}
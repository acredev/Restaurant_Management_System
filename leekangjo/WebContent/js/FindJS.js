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
	
	if (tell.value == "")
	{
		alert("전화번호 입력 후 다시 시도해 주세요. 전화번호는 숫자만 입력 가능합니다.");
		tell.focus();
		return false;
	}
	else
	{
		document.find_id_first.submit();
		return true;
	}
}
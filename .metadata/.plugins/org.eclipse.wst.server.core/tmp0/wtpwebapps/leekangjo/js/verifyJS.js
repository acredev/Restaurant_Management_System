var loginBox = document.querySelector('.outBox');
    var loginInputBox = document.querySelector('#verify');
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
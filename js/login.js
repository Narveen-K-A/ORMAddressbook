function validatemyform(){
    var userName = document.getElementById('uname');
    var passWord = document.getElementById('pswd');

    var validateuserName = userNameValidate(userName);
    var validatepassWord = passWordValidate(passWord);

    if(validateuserName && validatepassWord)
        return true;
    else 
		return false;
}

function error(id){
    document.getElementById(id).style.visibility="visible";
}
    
function success(id){
    document.getElementById(id).innerHTML="";
}

function userNameValidate(userName){ 
    if(userName.value==""){
      error('uname_error');  
      return false;
    }else{
       success('uname_error');
       return true;
    }
}

function passWordValidate(passWord){ 
    if(passWord.value==""){
      error('pswd_error');  
      return false;
    }else{
       success('pswd_error');
       return true;
    }
}
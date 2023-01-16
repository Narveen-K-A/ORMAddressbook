function validateform(){
    var userName = document.getElementById('uname');
    var passWord = document.getElementById('pswd');
    var emailId = document.getElementById('mailid');
    var fullName = document.getElementById('fname');
    var cpassWord = document.getElementById('cpswd');

    var validateuserName = userNameValidate(userName);
    var validatepassWord = passWordValidate(passWord);
    var validateemailId = emailIdValidate(emailId);
    var validatefullName = fullNameValidate(fullName);
    var validatecpassWord = cpassWordValidate(cpassWord,passWord);

    if(validateuserName && validatepassWord && validateemailId && validatefullName && validatecpassWord)
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

function emailIdValidate(emailId){ 
    if(emailId.value==""){
      error('email_error');  
      return false;
    }else{
       success('email_error');
       return true;
    }
}

function fullNameValidate(fullName){ 
    if(fullName.value==""){
      error('fname_error');  
      return false;
    }else{
       success('fname_error');
       return true;
    }
}

function cpassWordValidate(cpassWord,passWord){ 
    if(cpassWord.value==""){
      error('cpswd_error');  
      return false;
    }else if(cpassWord.value != passWord.value){
      error('cpaswd_error');  
      return false;
    }
    else{
       success('cpaswd_error');
       return true;
    }
}
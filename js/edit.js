function validateEditForm(){
    var editTitlevar = document.getElementById('editTitle');
    var editFnamevar = document.getElementById('editFname');
    var editLnamevar = document.getElementById('editLname');
    var editGendervar = document.getElementById('editGender');
    var editDobvar = document.getElementById('editDob');
    var editAddressvar = document.getElementById('editAddress');
    var editStreetvar = document.getElementById('editStreet');
    var editEmailvar = document.getElementById('editEmail');
    var editPhonevar = document.getElementById('editPhone'); 
  
    var validateeditTitlevar = editTitlevarValidate(editTitlevar);
    var validateeditFnamevar = editFnamevarValidate(editFnamevar);
    var validateeditLnamevar = editLnamevarValidate(editLnamevar);
    var validateeditGendervar = editGendervarValidate(editGendervar);
    var validateeditDobvar = editDobvarValidate(editDobvar);
    var validateeditAddressvar = editAddressvarValidate(editAddressvar);
    var validateeditStreetvar = editStreetvarValidate(editStreetvar);
    var validateeditEmailvar = editEmailvarValidate(editEmailvar);
    var validateeditPhonevar = editPhonevarValidate(editPhonevar); 
  
  
    if(validateeditTitlevar && validateeditFnamevar && validateeditLnamevar && validateeditGendervar && validateeditDobvar && validateeditAddressvar && validateeditStreetvar && validateeditEmailvar && validateeditPhonevar)
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
  
function editTitlevarValidate(editTitlevar){ 
    if(editTitlevar.value==""){
        error('editTitle_error');  
        return false;
    }else{
        success('editTitle_error');
        return true;
    }
}
  
function editFnamevarValidate(editFnamevar){ 
    if(editFnamevar.value==""){
        error('editFname_error');  
        return false;
    }else{
        success('editFname_error');
        return true;
    }
}
  
function editLnamevarValidate(editLnamevar){ 
    if(editLnamevar.value==""){
        error('editLname_error');  
        return false;
    }else{
        success('editLname_error');
        return true;
    }
}
  
function editGendervarValidate(editGendervar){ 
    if(editGendervar.value==""){
        error('editGender_error');  
        return false;
    }else{
        success('editGender_error');
        return true;
    }
}
  
function editDobvarValidate(editDobvar){ 
    if(editDobvar.value==""){
        error('editDob_error');  
        return false;
    }else{
        success('editDob_error');
        return true;
    }
}
  
function editAddressvarValidate(editAddressvar){ 
    if(editAddressvar.value==""){
        error('editAddress_error');  
        return false;
    }else{
        success('editAddress_error');
        return true;
    }
}
  
function editStreetvarValidate(editStreetvar){ 
    if(editStreetvar.value==""){
        error('editStreet_error');  
        return false;
    }else{
        success('editStreet_error');
        return true;
    }
}
  
function editEmailvarValidate(editEmailvar){ 
    if(editEmailvar.value==""){
        error('editEmail_error');  
        return false;
    }else{
        success('editEmail_error');
        return true;
    }
}
  
function editPhonevarValidate(editPhonevar){ 
    if(editPhonevar.value==""){
        error('editPhone_error');  
        return false;
    }else{
        success('editPhone_error');
        return true;
    }   
}
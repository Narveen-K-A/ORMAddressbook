function validateEditForm(){
    var editTitlevar = document.getElementById('editTitle');
    var editFnamevar = document.getElementById('editFname');
    var editLnamevar = document.getElementById('editLname');
    var editGendervar = document.getElementById('editGender');
    var editDobvar = document.getElementById('editDob');
    /* var editFilevar = document.getElementById('editFile'); */
    var editAddressvar = document.getElementById('editAddress');
    var editStreetvar = document.getElementById('editStreet');
    var editEmailvar = document.getElementById('editEmail');
    var editPhonevar = document.getElementById('editPhone'); 
  
    var validateeditTitlevar = editTitlevarValidate(editTitlevar);
    var validateeditFnamevar = editFnamevarValidate(editFnamevar);
    var validateeditLnamevar = editLnamevarValidate(editLnamevar);
    var validateeditGendervar = editGendervarValidate(editGendervar);
    var validateeditDobvar = editDobvarValidate(editDobvar);
    /* var validateeditFilevar = editFilevarValidate(editFilevar); */
    var validateeditAddressvar = editAddressvarValidate(editAddressvar);
    var validateeditStreetvar = editStreetvarValidate(editStreetvar);
    var validateeditEmailvar = editEmailvarValidate(editEmailvar);
    var validateeditPhonevar = editPhonevarValidate(editPhonevar); 
  
  
    if(validateeditTitlevar && validateeditFnamevar && validateeditLnamevar && validateeditGendervar && validateeditDobvar /* && validateeditFilevar */ && validateeditAddressvar && validateeditStreetvar && validateeditEmailvar && validateeditPhonevar)
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

/* function editFilevarValidate(editFilevar){ 
    if(editFilevar.value==""){
      error('editFile_error');  
      return false;
    }else{
       success('editFile_error');
       return true;
    }
  } */
  
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
    var streetval = /^[A-Za-z]+$/;
    if(editStreetvar.value.match(streetval)){
        success('editStreet_error');
        return true;
    }else{
        error('editStreet_error');  
        return false;
    }
}
  
function editEmailvarValidate(editEmailvar){
    var mailval = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
    if(editEmailvar.value.match(mailval)){
        success('editEmail_error');
        return true;
    }else{
        error('editEmail_error');  
        return false;
    }
}
  
function editPhonevarValidate(editPhonevar){
    var phoneval = /^\d{10}$/; 
    if(editPhonevar.value.match(phoneval)){
        success('editPhone_error');
        return true;
    }else{
        error('editPhone_error');  
        return false;
    }   
}
function validatecreateform(){
    var titleId = document.getElementById('titleid');
    var firstnameId = document.getElementById('firstnameid');
    var lastnameId = document.getElementById('lastnameid');
    var genderId = document.getElementById('genderid');
    var dobId = document.getElementById('dobid');
    var fileId = document.getElementById('fileid');
    var addressId = document.getElementById('addressid');
    var streetId = document.getElementById('streetid');
    var emailId = document.getElementById('emailid');
    var phoneId = document.getElementById('phoneid');
  
    var validatetitleId = titleIdValidate(titleId);
    var validatefirstnameId = firstnameIdValidate(firstnameId);
    var validatelastnameId = lastnameIdValidate(lastnameId);
    var validategenderId = genderIdValidate(genderId);
    var validatedobId = dobIdValidate(dobId);
    var validatefileId = fileIdValidate(fileId);
    var validateaddressId = addressIdValidate(addressId);
    var validatestreetId = streetIdValidate(streetId);
    var validateemailId = emailIdValidate(emailId);
    var validatephoneId = phoneIdValidate(phoneId);
  
  
    if(validatetitleId && validatefirstnameId && validatelastnameId && validategenderId && validatedobId && validatefileId && validateaddressId && validatestreetId && validateemailId && validatephoneId)
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
  
  function titleIdValidate(titleId){ 
    if(titleId.value==""){
      error('titleid_error');  
      return false;
    }else{
       success('titleid_error');
       return true;
    }
  }
  
  function firstnameIdValidate(firstnameId){ 
    if(firstnameId.value==""){
      error('firstnameid_error');  
      return false;
    }else{
       success('firstnameid_error');
       return true;
    }
  }
  
  function lastnameIdValidate(lastnameId){ 
    if(lastnameId.value==""){
      error('lastnameid_error');  
      return false;
    }else{
       success('lastnameid_error');
       return true;
    }
  }
  
  function genderIdValidate(genderId){ 
    if(genderId.value==""){
      error('genderid_error');  
      return false;
    }else{
       success('genderid_error');
       return true;
    }
  }
  
  function dobIdValidate(dobId){ 
    if(dobId.value==""){
      error('dobid_error');  
      return false;
    }else{
       success('dobid_error');
       return true;
    }
  }
  
  function fileIdValidate(fileId){ 
    if(fileId.value==""){
      error('fileid_error');  
      return false;
    }else{
       success('fileid_error');
       return true;
    }
  }
  
  function addressIdValidate(addressId){ 
    if(addressId.value==""){
      error('addressid_error');  
      return false;
    }else{
       success('addressid_error');
       return true;
    }
  }
  
  function streetIdValidate(streetId){
    var letters = /^[A-Za-z]+$/;
    if(streetId.value.match(letters)){
      success('streetid_error');
      return true;
    }else{
      error('streetid_error');  
      return false;
    }
  }
  
  function emailIdValidate(emailId){ 
    var mailformat = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
    if(emailId.value.match(mailformat)){
        success('emailid_error');
        return true;
    }else{
        error('emailid_error');  
        return false;
    }
  }
  
  function phoneIdValidate(phoneId){
    var phoneno = /^\d{10}$/; 
    if(phoneId.value.match(phoneno)){
      success('phoneid_error');
      return true;
    }
    else{
      error('phoneid_error');  
      return false;
    }
  }
  
  function printDiv(print) {
    var printContents = document.getElementById(print).innerHTML;
    var originalContents = document.body.innerHTML;
  
    document.body.innerHTML = printContents;
  
    window.print();
  
    document.body.innerHTML = originalContents;
  }
  
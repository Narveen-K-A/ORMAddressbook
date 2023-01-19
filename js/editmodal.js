function editPage(value){
    $.ajax({
        url:'components/edit.cfc?method=editFunction',
        type:'post',
        data:{
            method:'editFunction',
            editpass: value,
            dataType:'json'
        },
        success:function(data){
            var obj = JSON.parse(data);
            $('#edithide').val(obj.PERSONID);
            $('#editTitle').val(obj.TITLE);
            $('#editFname').val(obj.FIRSTNAME);
            $('#editLname').val(obj.LASTNAME);
            $('#editGender').val(obj.GENDER);
            $('#editDob').val(obj.DATEOFBIRTH);
            $('#editAddress').val(obj.ADDRESSOFUSER);
            $('#editStreet').val(obj.STREET);
            $('#editEmail').val(obj.EMAILID);
            $('#editPhone').val(obj.PHONENUMBER);
        }
    }) 
}
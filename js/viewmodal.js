function openPage(values){
    $.ajax({
        url:'components/view.cfc?method=viewFunction',
        type:'post',
        data:{
            method:'viewFunction',
            valuepass: values,
            dataType:'json'
        },
        success:function(data){
            var obj = JSON.parse(data);
            $('#viewtitle').html(obj.TITLE);
            $('#viewfname').html(obj.FIRSTNAME);
            $('#viewlname').html(obj.LASTNAME);
            $('#viewgender').html(obj.GENDER);
            $('#viewdob').html(obj.DATEOFBIRTH);
            $('#viewaddress').html(obj.ADDRESSOFUSER);
            $('#viewstreet').html(obj.STREET);
            $('#viewmail').html(obj.EMAILID);
            $('#viewphone').html(obj.PHONENUMBER);
            var location = document.getElementById("icondiv");
            var viewimage = document.createElement("img");
            viewimage.src = "assets/duplicate/"+obj.PHOTO;
            viewimage.className="photofile";
            location.append(viewimage);
        }
    }) 
}
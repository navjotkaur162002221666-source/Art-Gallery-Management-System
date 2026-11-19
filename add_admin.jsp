
<script>
function add()
{
    if(f1.username.value=="" || f1.username.value==null)
    {
        alert("Enter Username");
        return;
    }
    if(f1.password.value=="" || f1.password.value==null)
    {
        alert("Enter Password");
        return;
    }
   
    if(f1.email.value=="" || f1.email.value==null){
        alert("Enter a Valid E-mail id");
    }
    n=f1.email.value;//abc
    s=n.indexOf("@");
    if(s==-1)
    {
        alert("must  include @");
        return;
    } 
    s=n.indexOf(".com");
    if(s==-1)
    {
        alert("enter  email  properly");
        return;
    }
   if(f1.mno.value=="" || f1.mno.value==null){
        alert("Enter Mobile Number");
        return;
    }
    
    if(f1.mno.value.length<10 || f1.mno.value.length>10)
    {
        alert("Enter valid Mobile Number");
        return;
    }
    if(/[a-z]/.test(f1.mno.value))
    {
        alert("Enter valid Mobile Number");
        return;
    }
    /*if(f1.image.value="" || f1.image.value=null){
        alert("Please Select an Image");
    }*/
    f1.submit();

}

</script>
<form name="f1" action="add_admin1.jsp" enctype="multipart/form-data" method="post">
    <center><table cellspacing="10"><tr><td colspan="2"><center>Registration Form</center></td></tr>
    <tr><td>Enter Username</td><td><input type="text" name="username"></td></tr>
    <tr><td>Enter Password</td><td><input type="password" name="password"></td></tr>
    <tr><td>Enter E-mail Id</td><td><input type="email" name="email"></td></tr>
    <tr><td>Enter Mobile Number</td><td><input type="text" name="mno"></td></tr>
    <tr><td>Select Image</td><td><input type="file" name="image"></td></tr>
    <tr><td colspan="2"><center><input type="button" value="Submit" onclick="add()"></center></td></tr>
        </table></center>
</form>
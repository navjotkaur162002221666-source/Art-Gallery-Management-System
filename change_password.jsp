<%
  String uname=(String)session.getAttribute("username");
  String pass=(String)session.getAttribute("password");
 
if((uname.equals("") || uname.equals(null)) && (pass.equals("") || pass.equals(null))){
    response.sendRedirect("Login_page.html");
}
else{
%>
<html>
<head>
<title>Main Page - Art Gallery</title>
<meta charset="utf-8">
<noscript>
<link rel="stylesheet" href="css/5grid/core.css">
<link rel="stylesheet" href="css/5grid/core-desktop.css">
<link rel="stylesheet" href="css/5grid/core-1200px.css">
<link rel="stylesheet" href="css/5grid/core-noscript.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/style-desktop.css">
</noscript>
<script src="css/5grid/jquery.js"></script>
<script src="css/5grid/init.js?use=mobile,desktop,1000px&amp;mobileUI=1&amp;mobileUI.theme"></script>

</head>
    

<script>
function check()
{
    
   
    if(f1.from.value=="" || f1.from.value==null){
        alert("Enter a Valid E-mail id");
    }
    n=f1.from.value;//abc
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
    
   if(f1.password.value=="" || f1.password.value==null){
        alert("Enter Password");
    }
    if(f1.subject.value=="" || f1.subject.value==null){
        alert("Enter Subject");
    }
    if(f1.message.value=="" || f1.message.value==null){
        alert("Enter message");
    }
    /*if(f1.image.value="" || f1.image.value=null){
        alert("Please Select an Image");
    }*/
    f1.submit();

}

</script>

<body>
 <div id="header-wrapper">
  <header id="header">
    <div class="5grid-layout">
      <div class="row">
        <div class="4u" id="logo">
          <h1><a href="#" class="mobileUI-site-name">Art Gallery</a></h1>
          <p>by Hemant</p>   
        </div>
        <div class="8u" id="menu">
            <nav class="mobileUI-site-nav">
            <ul>
             
                <li><a href="logout.jsp"><h3>Logout</h3></a></li>
            </ul>
          </nav>
        </div>
      </div>
    </div>
  </header>
 </div><br><br>
<script>
function show()
{
    if(f1.cpass.value=="" || f1.cpass.value==null)
    {
        alert("Enter Current Password");
        return;
    }
    if(f1.npass.value!=f1.npass1.value){
        alert("New Passsword do not match");
        return;
    }
    if(f1.npass.value=="" || f1.npass.value==null){
        alert("Please enter New Password");
        return;
    }
    if(f1.npass1.value=="" || f1.npass1.value==null){
        alert("Please enter New Password");
        return;
    }
    f1.submit();

}
</script>
<form name="f1" action="change_password1.jsp" method="post">
    <center><table cellspacing="20"> <tr><td colspan="2"><center>CHANGE PASSWORD</center></td></tr>
    <tr><td>Enter Current Password</td><td><input type="password" name="cpass"></td></tr>
    <tr><td>Enter New Password</td><td><input type="password" name="npass"></td></tr>
    <tr><td>Re-enter New Password</td><td><input type="password" name="npass1"></td></tr>
    <tr><td colspan="2"><center><input type="button" value="Submit" onclick="show()"></center></td></tr>
</table></center>
</form>
	 <p>&copy;  <a href="#">Art Gallery </a> |  <a href="contact.jsp">Contact Us</a>
   </p>
<%}%>
         <style>
    td {
    height: 50px;
    vertical-align: top;
}
    table {
    width: 50%;
    align:center;
}

th {
    height: 50px;
}


table, th, td {
   
}


</style>
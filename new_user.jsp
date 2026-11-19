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

</script><div id="header-wrapper">
  <header id="header">
    <div class="5grid-layout">
      <div class="row">
        <div class="4u" id="logo">
          <h1><a href="#" class="mobileUI-site-name">Art Gallery</a></h1>
          <p>by Hemant </p>   
        </div>
        <div class="8u" id="menu"><h2>FORGOT PASSWORD PAGE</h2>
            <nav class="mobileUI-site-nav">
            <ul>
             
                <li><a href="logout.jsp"><h3>Logout</h3></a></li>
            </ul>
          </nav>
        </div>
      </div>
    </div>
  </header>
</div>
       
        <br><br><br><br><br>
              
           
        <h2>
       &nbsp;        <a href='add_art.jsp'>ADD NEW ART</a>&nbsp;|
       <a href='view_arts.jsp'>VIEW ALL ARTS</a>&nbsp;|
                <a href='last_bids.jsp'>VIEW LAST BIDS</a>&nbsp;|
            <a href='current_bids.jsp'>VIEW CURRENT BID</a>&nbsp;|
            <a href="set_bid.jsp">Set Arts For Bidding</a>  &nbsp;| <a href="getdetails.jsp">Manage User</a>  <br>
        </h2><br><br><br><br>
<form name="f1" action="new_user1.jsp" enctype="multipart/form-data" method="post">
    <h2><center><table cellspacing="10"><tr><td colspan="2"><center>Registration Form</center></td></tr>
    <tr><td>Enter Username</td><td><input type="text" name="username"></td></tr>
    <tr><td>Enter Password</td><td><input type="password" name="password"></td></tr>
    <tr><td>Enter E-mail Id</td><td><input type="email" name="email"></td></tr>
    <tr><td>Enter Mobile Number</td><td><input type="text" name="mno"></td></tr>
    <tr><td>Select Image</td><td><input type="file" name="image"></td></tr>
    <tr><td colspan="2"><center><input type="button" value="Submit" onclick="add()"></center></td></tr>
        </table></center></h2>
</form>
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
    padding:10px;
  
}
table tr:nth-child(2n){
    background:#f2f2f2;
}
</style>
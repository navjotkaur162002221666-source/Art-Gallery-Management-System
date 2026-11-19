<%@page import="java.sql.*;" %>
<html>
<head>
<title>Login Page - Art Gallery</title>
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
<script src="css/5grid/init.js?use=mobile,desktop,1000px&amp;mobileUI=1&amp;mobileUI.theme=none"></script>
<!--[if IE 9]>
<link rel="stylesheet" href="css/style-ie9.css">
<![endif]-->
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
             
<!--              <li><a href="threecolumn.html">Bid</a></li>-->
              <li><a href="new_bid.jsp">Bid</a></li>
              <li><a href="all_arts.jsp">Arts</a></li>
              <li class="current_page_item"><a href="contact.jsp">Contact Us</a></li>
              <li><a href="logout.jsp">Logout</a></li>
            </ul>
          </nav>
        </div>
      </div>
    </div>
  </header>
</div>
    
    <br><br><br>
    <h2><center><div class="span4">
		
		<form name="f1" action="contact1.jsp" method="post">
<center><table cellspacing="20"><tr><th colspan="2"><b>Contact Us </b></th></tr>
        <tr><td>FROM  (enter your e-mail id)</td><td><input type="email" name="from"></td><td></td></tr>
    <tr><td>Subject</td><td><input type="text" name="subject"></td></tr>
    <tr><td>Message</td><td><input type="text" name="message" ></td></tr>
    <tr><td colspan="2"><center><input type="button" onclick="check()" value="Submit"></center></td></tr>
    </table></center></form>
    </div></center></h2>
	
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
	


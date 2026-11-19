<%@page import="java.sql.*;" %>
<jsp:useBean id="cn" scope="page" class="mm.Conn1" />

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
    
<body>
    <div id="header-wrapper">
  <header id="header">
    <div class="5grid-layout">
      <div class="row">
        <div class="4u" id="logo">
          <h1><a href="#" class="mobileUI-site-name">Art Gallery</a></h1>
          <p>by Navjot Kaur</p>   
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
       </h2>
        <br><br><br><br><br><br><h2><center>
    
    

			 
			 
	<div class="span9">
  
	<div class="well well-small">
	
	<hr class="soft"/>
	
	Please enter the e-mail address used to register. We will e-mail you your new password.<br/><br/><br/>
	
	<script>
    function check(){
        if(f1.email.value==="" || f1.email.value===null){
        alert("Enter a Valid E-mail id");
    }
    n=f1.email.value;//abc
    s=n.indexOf("@");
    if(s===-1)
    {
        alert("must  include @");
        return;
    } 
    s=n.indexOf(".com");
    if(s===-1)
    {
        alert("enter  email  properly");
        return;
    }
     f1.submit();
    }
   </script>
	<form class="form-inline" name="f1" action="forgot_password1.jsp">
		<label class="control-label" for="inputEmail">Enter E-mail address</label>
		<input type="text" class="span4" placeholder="Enter Email Here" name="email">			  
		<button type="submit" class="shopBtn block" onclick="check()">Send My Password</button>
	</form>
</div>
</div>

</center></h2>
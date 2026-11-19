
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE HTML>
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
<script src="css/5grid/init.js?use=mobile,desktop,1000px&amp;mobileUI=1&amp;mobileUI.theme=none"></script>

</head>
<body class="homepage">
   
    
<div id="header-wrapper">
  <header id="header">
    <div class="5grid-layout">
      <div class="row">
        <div class="4u" id="logo">
          <h1><a href="#" class="mobileUI-site-name">Art Gallery</a></h1>
          <p></p>   
        </div>
        <div class="8u" id="menu">
          <nav class="mobileUI-site-nav">
            <ul>
              <li><a href="new_bid.jsp">Bid</a></li>
              <li><a href="all_arts.jsp">Arts</a></li>
              <li><a href="change_password.jsp">Change Password</a></li>
              <li><a href="edit_profile.jsp">Edit Profile</a></li>
              <li><a href="contact.jsp">Contact Us</a></li>
              <li><a href="logout.jsp">Logout</a></li>
            </ul>
          </nav>
        </div>
      </div>
    </div>
  </header>
</div>
    
    <% 
        mm.Conn1 c1=new mm.Conn1();
        ResultSet rs=c1.executeQuery("select * from arts where status='Active'");
        if(rs.next()){
            String image=rs.getString("image");

        %>
        
<div class="5grid-layout">
  <div class="row">
    <div id="banner" class="12u">
        <div class="container"><a href="#"><img height="420" src="Arts/mp3.jpg" alt="current.jpg"></a></div>
    </div>
  </div>
</div>
       <%} %>
     
<div id="wrapper">
  <div>
    <div class="5grid-layout" id="marketing">
      <div class="row divider">
         
        <div class="3u">
          <section>
             
            <p><a href="#"><img src=Arts/Gaddan.jpg height="300" width="300"></a></p>
           
          </section>
        </div>
          <div class="3u">
          <section>
             
            <p><a href="#"><img src=Arts/m1.jpg height="300" width="300"></a></p>
           
          </section>
        </div>
           <div class="3u">
          <section>
              
            <p><a href="#"><img src=Arts/art_main3.jpg height="300" width="300"></a></p>
           
          </section>
        </div>
           <div class="3u">
          <section>
            
            <p><a href="#"><img src=Arts/mp2.jpg height="300" width="300"></a></p>
           
          </section>
        </div>
      </div>
    </div>
  </div>
 </div> 
       
<div id="wrapper">
  <div>
    <div class="5grid-layout" id="marketing">
      <div class="row divider">
         
        <div class="3u">
          <section>
              
            <p><a href="#"><img src=Arts/mp4.jpg height="300" width="300"></a></p>
           
          </section>
        </div>
          <div class="3u">
          <section>
            
            <p><a href="#"><img src=Arts/mp9.jpg height="300" width="300"></a></p>
           
          </section>
        </div>
           <div class="3u">
          <section>
              
            <p><a href="#"><img src=Arts/train.jpg height="300" width="300"></a></p>
           
          </section>
        </div>
           <div class="3u">
          <section>
              
            <p><a href="#"><img src=Arts/mp2.jpg height="300" width="300"></a></p>
           
          </section>
        </div>
      </div>
    </div>
  </div>
 </div>        
       
       
       
       
       <p>&copy;  <a href="#">Art Gallery </a> |  <a href="contact.jsp">Contact Us</a>
         </p>
    
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
          <p>by Navjot Kaur</p>   
        </div>
        <div class="8u" id="menu">
          <nav class="mobileUI-site-nav">
            <ul>
            
              <li ><a href="new_bid.jsp">Bid</a></li>
              <li class="current_page_item"><a href="all_arts.jsp">Arts</a></li>
              <li><a href="change_password.jsp">Change Password</a></li>
               <li><a href="edit_profile.jsp">Edit Profile</a></li>
              <li><a href="contact.jsp">Contact US</a></li>
              <li><a href="logout.jsp">Logout</a></li>
            </ul>
          </nav>
        </div>
      </div>
    </div>
  </header>
</div>
    <br><br>
    
       <%
               mm.Conn1 c1=new mm.Conn1();
               
               
               ResultSet rs1=c1.executeQuery("select * from arts");
        while(rs1.next()){
            String image=rs1.getString("image");
            String aname=rs1.getString("art_name");
       %>
<div id="wrapper">
  <div>
    <div class="5grid-layout" id="marketing">
      <div class="row divider">
        
        <div >
          <section>
              
            <div style="width:100%;height:40%">
                <div style="width:30%;float:left"><a href=""><img src=Arts/<%out.print(image);%> alt="art_view" height="250" width="250"></a></div>

               <div align="center" style="height:40%;">
                   <br><br>
                   <h2>Art Name: <%out.print(aname);%></h2><br><br />
                   <h2>Artist Name: <%out.print(aname);%></h2><br><br>
                   <a href="art_detail.jsp?a_id=<%=rs1.getString("art_id")%>">View</a>&nbsp &nbsp
                   <a href="download_Art.jsp?val=<%=rs1.getString("image")%>">Download</a>
                   
               </div>
            </div>
            
          </section>
        </div>
       
      </div>
    </div><%}%>
  </div>
 </div>  
</body></html>  
  
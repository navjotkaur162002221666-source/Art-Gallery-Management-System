<%@page import="java.sql.*;" %>

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
        <div class="8u" id="menu"><h2>ART DETAILS</h2>
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
       
        <br><br>
        
        
        <form>
            <% 
                String aid=request.getParameter("a_id");
                mm.Conn1 c1=new mm.Conn1();
                ResultSet rs=c1.executeQuery("select * from arts where art_id='"+aid+"'");
                if(rs.next()){
                    
                
            %>
            <h2> <center>     <table><tr><th>Art</th><th> Details</th></tr><tr><td><img src=Arts/<%=rs.getString("image")%> width=250px  height=250></td><td>Art Name: <%=rs.getString("art_name")%><br><br>
                                Artist Name : <%=rs.getString("art_name")%><br><br></td></tr></table></center></h2>
            
                                <%}%><center><h2><a href="page1.jsp">Return to Homepage</a></h2></center>
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
   border: 1px solid black;
}


</style>
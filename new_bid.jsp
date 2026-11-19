<%@page import="java.time.LocalDate"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
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
          <p>by Navjot Kaur </p>   
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
</div>
       
        <br><br><br><br><br>
              
           
       
        <%
            DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
LocalDate localDate = LocalDate.now();

    String date=(dtf.format(localDate)).toString();
    
%><center><h2>CURRENT BIDS</h2></center><br><br><br>
        <h2> <center> <table><tr>
                    <center><table ><tr><th>Art</th><th>Name of Art</th><th>Name of Artist</th><th>Base Price</th><th>Created On Date</th><th colspan='2'><center>Make Bid</center></th></tr><tr>
                  
        <%
            mm.Conn1 c1=new mm.Conn1();
           
            ResultSet rs1=c1.executeQuery("select * from arts where status='Active'");
            while(rs1.next()){
           
    %>
    <td><img src=Arts/<%=rs1.getString("image")%> width="100" height="100"></td><td><%=rs1.getString("art_name")%></td><td><%=rs1.getString("creator_name")%></td><td><%=rs1.getString("base_price")%></td><td><%=rs1.getString("creation_date")%></td><td><a href="bid.jsp?a_id=<%=rs1.getString("art_id")%>">Make Bid</a></td>
                    </tr>
                    
      
        
        
          <%  }
            %>
                        </table></center></h2>
                        
    </body>
</html>



<style>
    td {
    height: 50px;
    vertical-align: top;
}
    table {
    width: 100%;
}

th {
    height: 50px;
}


table, th, td {
   padding:10px;
   border: 1px solid black;
}


</style>
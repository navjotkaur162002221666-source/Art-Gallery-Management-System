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
        <div class="8u" id="menu"><h2>CURRENT ART PAGE</h2>
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
            <a href="set_bid.jsp">Set Arts For Bidding</a>  &nbsp; <br>
        </h2><br><br><br><br><br>
        <%
            DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
LocalDate localDate = LocalDate.now();

    String date=(dtf.format(localDate)).toString();
    
        %>
    
        <h2> <center><table border='1'><tr><th>Art</th><th>Name of Art</th><th>Name of Artist</th><th>Base Price</th><th>Start Date</th><th colspan='2'><center>Show Bids</center></th></tr><tr>
                  
        <%
            
            mm.Conn1 c1=new mm.Conn1();
           System.out.print("hellloo");
            ResultSet rs1=c1.executeQuery("select * from arts where status='Active'");
             System.out.print("qwery");
            while(rs1.next()){
           
  %>
    <td><img src=Arts/<%=rs1.getString("image")%> width="100" height="100"></td><td><%=rs1.getString("art_name")%></td><td><%=rs1.getString("creator_name")%></td><td><%=rs1.getString("base_price")%></td><td><%=rs1.getString("start_date")%></td><td><a href="view_bids.jsp?a_id=<%=rs1.getString("art_id")%>">View Bids</a></td>
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
   border: 1px solid black;
}


</style>
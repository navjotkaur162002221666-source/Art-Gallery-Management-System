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
    <body><form action="set_bid1.jsp"><div id="header-wrapper">
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
       &nbsp;     <a href='add_art.jsp'>ADD NEW ART</a>&nbsp;|
       <a href='view_arts.jsp'>VIEW ALL ARTS</a>&nbsp;|
                <a href='last_bids.jsp'>VIEW LAST BIDS</a>&nbsp;|
            <a href='current_bids.jsp'>VIEW CURRENT BID</a>&nbsp;|
            <a href="set_bid.jsp">Set Arts For Bidding</a>  &nbsp;  <br>
        </h2><br><br><br>
        <center> <h2><table><tr><td colspan="4"><h1><center>Set Art for Bid</center></h1></td></tr>
            <tr><th>Art</th><th>Art Name</th><th>Base Price</th><th>Set For Bid</th></tr>
            <tr>
        <%
            mm.Conn1 c1=new mm.Conn1();
            
            ResultSet rs=c1.executeQuery("select * from arts where status='Inactive'");
            while(rs.next()){
            %>
            <td><img src=Arts/<%=rs.getString("image")%> width=180px  height=150></td>
            <td><%=rs.getString("art_name")%></td><td><%=rs.getString("base_price")%></td>
            <td><a href="set_bid2.jsp?a_id=<%=rs.getString("art_id")%>&aname=<%=rs.getString("art_name")%>&bprice=<%=rs.getString("base_price")%>">Set For Bid</a></td></tr>
                    
            <%
        }
    %>
            </table></h2></center>
           
        </form> </body>
</html>
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
   border: 1px solid black;
}


</style>
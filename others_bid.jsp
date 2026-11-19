
<%@page import="java.text.DateFormat"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.text.SimpleDateFormat,java.util.*;" %>
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
        <hr>
    <br><center><h2>Current Bid</h2></center><br><hr>
        <%
            String art_id=request.getParameter("art_id");
            String user_id=request.getParameter("uid");   
            mm.Conn1 c1=new mm.Conn1();
            c1.t=c1.executeQuery("select * from arts where art_id='"+art_id+"'");
            if(c1.t.next()){
        %><center><h2><table><tr><th colspan="4"><img src=Arts/<%=c1.t.getString("image")%> height='250' width='250'></th></tr><tr><th>Art Name : <%=c1.t.getString("art_name")%></th><th>Artist Name:  <%=c1.t.getString("creator_name")%></th><th>Bidding Date : <%=c1.t.getString("start_date")%></th><th>Base Price : <%=c1.t.getString("base_price")%> </th></tr></table></center></h2>
    <hr> <br><h2><center> All Bids</center></h2><br><<hr><h2><center><Table> <tr><th>Username</th><th>User's Email Id </th><th>User's Bid</th></tr>
                    
           <% 
            c1.t1=c1.executeQuery("select * from bid where art_id='"+art_id+"' and user_id!='"+user_id+"'");
            while(c1.t1.next()){%>
            <tr><td><%=c1.t1.getString("username")%></td><td><%=c1.t1.getString("email")%></td><td><%=c1.t1.getString("user_bid")%></td><td><%=c1.t1.getString("user_bid")%></td></tr>

          <%  }}
            %>
                    </table></center></h2>
        </form> 
    </body>
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
 
}



</style>
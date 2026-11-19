<%@page import="java.sql.*;" %>
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
    <script type="text/javascript">
        function check(){
    
if(!f1.status.checked)
{
  alert("Please Select New Status");
return;
}
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
            <a href="set_bid.jsp">SET ARTS FOR BIDDING</a>  &nbsp;<br>
        </h2><br><br><br><br><form action='sell_art1.jsp' name='f1'>
    <%
        
        String aid=request.getParameter("aid");
        mm.Conn1 c1=new mm.Conn1();
       c1.rs=c1.executeQuery("SELECT * FROM bid WHERE art_id='"+aid+"' and  user_bid = (SELECT MAX(user_bid) FROM bid WHERE art_id='"+aid+"')    ");
        if(c1.rs.next()){
            String art_id=c1.rs.getString("art_id");
             String user_name=c1.rs.getString("username");
             String user_id=c1.rs.getString("user_id");
             String email=c1.rs.getString("email");
              String ubid=c1.rs.getString("user_bid");
              String art_name=c1.rs.getString("art_name");%>
              <input type='hidden' value='<%out.print(art_id);%>' name='art_id'><br>
               <input type='hidden' value='<%out.print(user_name);%>' name='username'><br>
               <input type='hidden' value='<%out.print(user_id);%>' name='user_id'><br>
               <input type='hidden' value='<%out.print(email);%>' name='email'><br>
               <input type='hidden' value='<%out.print(ubid);%>' name='ubid'><br>
               <input type='hidden' value='<%out.print(art_name);%>' name='art_name'><br>
           
              
               <h2> <table border='1' cellpadding='10'><tr><th>Buyer Id</th><th><%out.print(user_id);%></th></tr><tr><th>Buyer Name</th><th><%out.print(user_name);%></th></tr><tr><th>Buyer Email Id</th><th><%out.print(email);%></th></tr><tr><th>Buyer's Bid(Highest Bid)</th><th><%out.print(ubid);%></th></tr><tr><th>Select Status : </th><th><input type='radio' name='status' value='Sold'>Sold</th></tr><tr><th colspan="2"><input type="button" value='Sell this Art' onclick='check()'></th></tr>
                      
                   </table></h2>
                  <%}
         %>
        </form> </body></html>

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
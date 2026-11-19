<%@page import="java.sql.*;" %>
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
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
          <p>by Hemant</p>   
        </div>
        <div class="8u" id="menu"><h2>ADD NEW ART</h2>
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
            <a href="set_bid.jsp">Set Arts For Bidding</a>  &nbsp;  <br>
       </h2><form action="set_bid1.jsp">
            <%
                  DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
                  LocalDate localDate = LocalDate.now();

                  String date=dtf.format(localDate).toString();

                String id=request.getParameter("a_id");
               
                String aname=request.getParameter("aname");
                String bprice=request.getParameter("bprice");
                
            %>
            <input type="hidden" name="hid" value="<%out.print(id);%>"><br>
            <input type="hidden" name="hname" value="<%out.print(aname);%>"><br>
            <input type="hidden" name="hprice" value="<%out.print(bprice);%>"><br>
            <h2> <center> <table><tr><th colspan="2">Setting Art for Bid </th></tr>
                <tr><th>Art Name : </th><td><%out.print(aname);%></td></tr>
                <tr><th>Base Price(in Rs.)</th><td><%out.print(bprice);%></td></tr> 
                <tr><th>Select Status : </th><th><input type="radio" name="status" value="Active">Active </th></tr> 
                
                <tr><th>Select Date of Start Bidding : </th><td><div><input type="date" name="start_date" min="2024-04-20" max="2025-04-30" required><span  class="validity"></span></div></td></tr>
            <tr><th>Enter Time At which Bidding will be Available : </th><td><div><input type="time" name="start_time" required><span  class="validity"></span></div></td></tr>
            <tr><th>Enter Minutes for which Bidding will Continue : </th><td><div><input type="text" name="duration" placeholder="e.g.- '5' minutes" required><span  class="validity"></span></div></td></tr>
            
            <tr><th colspan="2"><center><input type="submit"></center></th></tr>
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
   border: 1px solid black;
}


</style>
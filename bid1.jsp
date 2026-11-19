<%@page import="java.text.ParseException,java.text.SimpleDateFormat,java.util.Locale,java.util.*;"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>

<%@page import="java.text.SimpleDateFormat;" %>

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
              <li class="current_page_item"><a href="index.html">Homepage</a></li>
              <li><a href="#">Bid</a></li>
              <li><a href="#">Arts</a></li>
              <li><a href="#">Two Column #2</a></li>
              <li><a href="#">Logout</a></li>
            </ul>
          </nav>
        </div>
      </div>
    </div>
  </header>
</div>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Art Gallery</title>
    </head>
    <body><form action="make_bid.jsp">
        <% mm.Conn1 c1 = new mm.Conn1();
        String art_id=request.getParameter("a_id");
        session.setAttribute("art_id",art_id);
        try{
            DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
LocalDate localDate = LocalDate.now();

   String date=dtf.format(localDate).toString();
    
        String a_id=request.getParameter("a_id");
        
        String uid=session.getAttribute("id").toString();
         String uname=session.getAttribute("username").toString();
         String email=session.getAttribute("email").toString();
          //String upass=session.getAttribute("password").toString();
        c1.rs=c1.executeQuery("select * from arts where art_id='"+a_id+"'");
        if(c1.rs.next()){
        String start_date=c1.rs.getString("start_date").toString();
         String start_time=c1.rs.getString("start_time").toString();
       /*String start_date = "2014/09/12";
        String end_date = "2014/09/13";*/
         Date start = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH).parse(start_date);
         Date end = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH).parse(start_time);
         Date date1 = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH).parse(date);
         
        
        %>
        <input type="hidden" value="<%out.print(uid);%>" name="uid"><br>
        <input type="hidden" value="<%out.print(uname);%>" name="uname"><br>
        <input type="hidden" value="<%=c1.rs.getString("base_price")%>" name="bprice"><br>
        <input type="hidden" value="<%=c1.rs.getString("art_id")%>" name="a_id"><br>
        <input type="hidden" value="<%=c1.rs.getString("art_name")%>" name="a_name"><br>
        <input type="hidden" value="<%out.print(email);%>" name="email"><br>
        <script language="javascript" type="text/javascript">
            today = new Date();
            todayEpoch = today.getTime(); 
            target1= new Date("<%=c1.rs.getString("start_date")%>");
            target = new Date("<%=c1.rs.getString("end_date")%>"); 
            targetEpoch = target.getTime();
            targetEpoch1 = target1.getTime();
            daysLeft1 = Math.floor(((targetEpoch1 - todayEpoch) / (60*60*24)) / 1000);
            daysLeft = Math.floor(((targetEpoch - todayEpoch) / (60*60*24)) / 1000);
            
        </script> 
        <%if(start_date.equals(date) || (start.compareTo(end)<=0)){%>
        <h1><center><img src=Arts/<%=c1.rs.getString("image")%> width=300px  height=300></center></h1><br>
    <center> <table><tr><th>Art Name : </th><td><%=c1.rs.getString("art_name")%></td></tr>
            <tr> <th>Artist Name : </th><td><%=c1.rs.getString("creator_name")%></td></tr>
            <tr><th>Created on Date : </th><td><%=c1.rs.getString("creation_date")%></td></tr></table></center>
    <center> <div><h2>Start Bidding for this Art</h2></div></center>
    
        <center><div><h3>Bidding Started on :  <%out.print(start_date);%> </h3></div></center>
        <center><div><h3>Time Left :  <script>document.write(daysLeft);</script> Days</h3></div></center>
        <center> <div><h3>Base Price : <%=c1.rs.getString("base_price")%></h3></div>
            
            <div> <input type="text" name="b_price" placeholder="Enter your Amount here">&nbsp;&nbsp;<h3><input type="submit" value="Submit your Bid"></h3></div></center>
        <center><div><input type="submit" value="View Other Users Bids"></div></center>
                <%}else if(date1.compareTo(end)>0){%>
<h1><center><img src=Arts/<%=c1.rs.getString("image")%> width=300px  height=300></center></h1><br>
<center> <table><tr><th>Art Name : </th><td><%=c1.rs.getString("art_name")%></td></tr>
            <tr> <th>Artist Name : </th><td><%=c1.rs.getString("creator_name")%></td></tr>
            <tr><th>Created on Date : </th><td><%=c1.rs.getString("creation_date")%></td></tr></table></center>
    <center> <div><h2>Bidding for this Art is Closed</h2></div></center>
    
        <center><div><h3>Bidding Was Started On : <%out.print(start_date);%></h3></div></center>
        
        <center> <div><h3>Base Price : <%=c1.rs.getString("base_price")%></h3></div>
<%}
else{
%>
        <h1><center><img src=Arts/<%=c1.rs.getString("image")%> width=300px  height=300></center></h1><br>
    <center> <table><tr><th>Art Name : </th><td><%=c1.rs.getString("art_name")%></td></tr>
            <tr> <th>Artist Name : </th><td><%=c1.rs.getString("creator_name")%></td></tr>
            <tr><th>Created on Date : </th><td><%=c1.rs.getString("creation_date")%></td></tr></table></center>
    <center> <div><h2>Start Bidding for this Art</h2></div></center>
    
        <center><div><h3>Bidding Will Start On : <%out.print(start_date);%></h3></div></center>
        
        <center> <div><h3>Base Price : <%=c1.rs.getString("base_price")%></h3></div>
        
        
        
    <%}  } }catch(ParseException e) {
            e.printStackTrace();
        }%>
    <div name="gg"></div>
    <center><h3> <a href="homepage.jsp">Return to Previous Page</a></h3></center>
    
    
   
      




        </form>
</body>
</html>

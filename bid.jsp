<%@page import="java.text.DateFormat"%>
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
<script src="css/5grid/init.js?
use=mobile,desktop,1000px&amp;mobileUI=1&amp;mobileUI.theme=none"></script>

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



    <script type='text/javascript'>
       var  secondsBeforeExpire;
       function  show1(s)
       {
             secondsBeforeExpire=s;
             
            // alert(secondsBeforeExpire);
              //alert(s);
       
  
   // var secondsBeforeExpire = f1.ti.value;
    
    // This will trigger your timer to begin
    var timer = setInterval(function(){
        // If the timer has expired, disable your button and stop the timer
        if(secondsBeforeExpire <= 0){
            clearInterval(timer);
            $("#ExampleButton").prop('disabled',true);
        }
        // Otherwise the timer should tick and display the results
        else{
            // Decrement your time remaining
            secondsBeforeExpire--;
            $("#time-remaining").html(secondsBeforeExpire);      
        }
    },1000);
       }
    
  </script>
     <form action="make_bid.jsp" name="f1">    
         
      
      
    
    <body>
        
      <%  try{mm.Conn1 c1 = new mm.Conn1();
      String art_id=request.getParameter("a_id");
       session.setAttribute("art_id",art_id);
       
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
         int duratio=Integer.parseInt(c1.rs.getString("duration"));
       int duration=duratio*60;
        
         
       /*String start_date = "2014/09/12";
        String end_date = "2014/09/13";*/
       DateFormat t=new SimpleDateFormat("HH:mm");
       Date dn=new Date();
         Date start = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH).parse(start_date);
         Date end = new SimpleDateFormat("HH:mm", Locale.ENGLISH).parse(start_time);
         
      Date end1=end;
      int ch=end1.getMinutes();       
      end1.setMinutes(ch+5);

         Date date1 = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH).parse(date);
         
        
        %>
        
        <body   onload="show1('<%=duration%>')">
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
           ``
           
            targetEpoch1 = target1.getTime();
            daysLeft1 = Math.floor(((targetEpoch1 - todayEpoch) / (60*60*24)) / 1000);
            
        </script>
     
        <%
            
Date t1=new Date();
String tt=t.format(t1);
Date t3 =t.parse(tt);
if(t3.after(end1)){
    int n=c1.executeUpdate("update arts set finished_time='Timeup' where art_id='"+art_id+"'");
}
else if(start_date.equals(date) || (t3.before(end1) && t3.after(end))) {%>
    
   
    

  
  
  
  
    
        <h1><center><img src=Arts/<%=c1.rs.getString("image")%> width=300px  
height=300></center></h1><br>
        <center> <table><tr><th><h2>Art Name : </h2></th><td><h2><%=c1.rs.getString
("art_name")%></h2></td></h2></tr><tr><th></th><td></td></tr>
                <tr> <th><h2>Artist Name : </h2></th><td><h2><%=c1.rs.getString
("creator_name")%></h2></td><h1></tr>
                    <tr><th><h2>Created on Date : </h2></th><td><h2><%=c1.rs.getString
("creation_date")%></h2></td></tr></table></center>
        <br> <center> <div><u><h2>Start Bidding for this Art</h2></u></div></center><br>
    
        <center><div><h2>Bidding Started on :  <%out.print(start_date);%> </h2></div></center><br>
        <center><div><h2>Bidding Time Left : <span id='time-remaining'></span> seconds 
</h2></div></center><br>
        <center> <div><h2>Base Price : <%=c1.rs.getString("base_price")%></h2></div><br>
            
            <div> <input type="text" name="b_price" placeholder="Enter your Amount 
here">&nbsp;&nbsp;<h3><input type="submit" id='ExampleButton' value="Submit your 
Bid"></h3></div></center>
        <br><center><div><a href="others_bid.jsp?art_id=<%out.print(art_id);%>&uid=<%out.print(uid);%>"><input type="button" value="View Other Users 
Bids"></a></div></center>
                <%}else{%>
 <h1><center><img src=Arts/<%=c1.rs.getString("image")%> width=300px  height=300></center></h1><br>
        <center> <table><tr><th><h2>Art Name : </h2></th><td><h2><%=c1.rs.getString
("art_name")%></h2></td></h2></tr><tr><th></th><td></td></tr>
                <tr> <th><h2>Artist Name : </h2></th><td><h2><%=c1.rs.getString
("creator_name")%></h2></td><h1></tr>
                    <tr><th><h2>Created on Date : </h2></th><td><h2><%=c1.rs.getString
("creation_date")%></h2></td></tr></table></center>
        <br> <center> <div><u><h2>Start Bidding for this Art</h2></u></div></center><br>
    
        <center><div><h2>Bidding Started on :  <%out.print(start_date);%> </h2></div></center><br>
        <center><div><h2>Bidding Will Start At : <%out.print(start_time);%></span> 
</h2></div></center><br>
        <center> <div><h2>Base Price : <%=c1.rs.getString("base_price")%></h2></div><br>
            
            <div> <input type="text" name="b_price" placeholder="Enter your Amount 
here">&nbsp;&nbsp;<h3><input type="button" disabled="disabled" id='ExampleButton' value="Submit your 
Bid"></h3></div></center>
        <br><center><div><a href="others_bid.jsp"><input type="button" disabled="disabled" value="View Other Users 
Bids"></a></div></center>
<%}
  }else{out.print("No Bid Available");} }catch(ParseException e) {
            e.printStackTrace();
        } 

%>
<center><h2>No Art Available for Bidding</h2></center><br><br><br>
    <center><h2> <a href="page1.jsp">Return to Previous Page</a></h2></center>
 
    </form>  
</body>
</html>
<style>



table, th, td {
    padding:5px;
 
}

</style>
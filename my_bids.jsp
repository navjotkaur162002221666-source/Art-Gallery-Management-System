
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
          <p></p>   
        </div>
        <div class="8u" id="menu">
            <nav class="mobileUI-site-nav">
            <ul>
              <li><a href="my_bids.jsp">My Bids</a></li>
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
       
        <br><br>
        <form action='sell_art.jsp'>
        <%
           String uid=session.getAttribute("id").toString();
            DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
            LocalDate localDate = LocalDate.now();

            String date=(dtf.format(localDate)).toString();
            mm.Conn1 c1=new mm.Conn1();
            c1.r=c1.executeQuery("select * from arts where status='Active' || status='Sold'");
            if(c1.r.getString("status").equals("Sold")){
                 String end_date=(c1.r.getString("end_date").toString());
                 String start_date=(c1.r.getString("start_date").toString());
                 Date start = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH).parse(start_date);
                 Date end = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH).parse(end_date);
            
              c1.t=c1.executeQuery("select * from bid where user_id='"+uid+"'");
              if(c1.t.next()){
                String my_bid=c1.t.getString("user_bid");
                
              
                 
                 if(date.compareTo(end_date)>0){
        %>
    
        
        
        
     <%   
    }}} else{
response.sendRedirect("error.jsp");
}
    %>
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
table tr:nth-child(2n){
    background:#f2f2f2;
}


</style>
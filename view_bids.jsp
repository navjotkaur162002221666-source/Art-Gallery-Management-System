
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.text.SimpleDateFormat,java.util.*;" %>
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
       
        <br><br><br><br><br>
              
           
        <h2>
       &nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      <a href='add_art.jsp'>ADD NEW ART</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <a href='view_arts.jsp'>VIEW ALL ARTS</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href='last_bids.jsp'>VIEW LAST BIDS</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href='current_bids.jsp'>VIEW CURRENT BID</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="set_bid.jsp">SET ARTS FOR BIDDING</a>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
        </h2><br><br><br><form action='sell_art.jsp'><h2>
        <%
           
            DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
            LocalDate localDate = LocalDate.now();
            String aid1=request.getParameter("a_id");
            
            String date=(dtf.format(localDate)).toString();
            Date date1 = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH).parse(date);
            mm.Conn1 c1=new mm.Conn1();
            c1.r=c1.executeQuery("select * from arts where status='Active' and finished_time='Timeup' and art_id='"+aid1+"'");
            if(c1.r.next()){
                 String start_time=(c1.r.getString("start_time").toString());
                 String start_date=(c1.r.getString("start_date").toString());
                 Date start = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH).parse(start_date);
                
                
        %> <%
                       
                        
                        String aid=c1.r.getString("art_id");
                    %>
                    <input type='hidden' value='<%out.print(aid1);%>' name='aid'>
         <center><h1>Current Bidding </h1></center><br><br>
    <center> <table cellpadding='20' border='1'><tr><th colspan="3"><b><h3>Art Available For Bidding</h3></b></th></tr><tr>
                   
                        <th colspan="3"><center><img src=Arts/<%=c1.r.getString("image")%> width="150" height="150"></center></th></tr>
            <tr><th> Art Name : <i><%=c1.r.getString("art_name")%></i></th><th> Artist Name : <i><%=c1.r.getString("creator_name")%></i></th><th> Base Price : <%=c1.r.getString("base_price")%></th></tr></table></center>
                            
    <br><br><br>
    <center><table cellpadding='20' border='1'><tr><th colspan="4"><h3>List Of Bids </h3></th></tr><tr><th>Username</th><th>User's Email Id</th><th>Base Price</th><th>Bid Price</th></tr><tr>
    <%
        c1.rs1=c1.executeQuery("select * from bid where art_id='"+aid+"'");
    while(c1.rs1.next()){%>
            <td><%=c1.rs1.getString("username")%></td><td><%=c1.rs1.getString("email")%></td><td><%=c1.rs1.getString("base_price")%></td>
            <td><%=c1.rs1.getString("user_bid")%></td></tr>
        
        
        
        
            <%}c1.rs1.close();%></table></center><br><br>
            <h2><div> <center><a href='sell_art.jsp?aid=<%out.print(aid);%>'> <input type='button' value='Get Highest Bid'></a></center></div></h2>
    
    
    
    
    <%   }else{%>
   
    <center><h2>No Art Available Now</h2></center>  <br><br><br><br>
    <%
    
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
    width: 100%;
}

th {
    height: 50px;
}


table, th, td {
   border: 1px solid black;
}


</style>
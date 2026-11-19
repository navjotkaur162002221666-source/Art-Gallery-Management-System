
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.text.SimpleDateFormat,java.util.*;" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Art Gallery</title>
    </head>
    
    <body><form action='sell_art.jsp'>
        <%
           
            DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
            LocalDate localDate = LocalDate.now();
            String aid1=request.getParameter("a_id");
           try{
            String date=(dtf.format(localDate)).toString();
            mm.Conn1 c1=new mm.Conn1();
            c1.r=c1.executeQuery("select * from arts where status='Active' and art_id='"+aid1+"'");
           if(c1.r.next()){
                String status=c1.r.getString("status");
                 String end_date=(c1.r.getString("end_date").toString());
                 String start_date=(c1.r.getString("start_date").toString());
                 Date start = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH).parse(start_date);
                 Date end = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH).parse(end_date);
                 if(date.compareTo(end_date)>0 && status.equals("Active")){
        %>
    <center><h1>Bidding Has Been Closed</h1></center><br><br>
    <center> <table cellpadding='20' border='1'><tr><th colspan="3"><b><h3>Art Available For Bidding</h3></b></th></tr><tr>
        <%
                       
                        String aid=c1.r.getString("art_id");
        %>
                        <th colspan="3"><center><img src=Arts/<%=c1.r.getString("image")%> width="150" height="150"></center></th></tr>
            <tr><th> Art Name : <i><%=c1.r.getString("art_name")%></i></th><th> Artist Name : <i><%=c1.r.getString("art_name")%></i></th><th> Base Price : <%=c1.r.getString("base_price")%></th></tr></table></center>
                            
    <br><br><br>
    <center><table cellpadding='20' border='1'><tr><th colspan="4"><h3>List Of Bids </h3></th></tr><tr><th>Username</th><th>User's Email Id</th><th>Base Price</th><th>Bid Price</th></tr><tr>
    <%
        c1.rs1=c1.executeQuery("select * from bid where art_id='"+aid+"'");
    while(c1.rs1.next()){%>
            <td><%=c1.rs1.getString("username")%></td><td><%=c1.rs1.getString("email")%></td><td><%=c1.rs1.getString("base_price")%></td>
            <td><%=c1.rs1.getString("user_bid")%></td></tr>
        
        
        
        
            <%}c1.rs1.close();%></table></center>
            <center><div><input type="submit" value="Get Highest Bid for Art" ></div></center>
    
    
  
                     
                          
<%}else{out.print("<center><h1>Not Available</h1></center>");%>
<center><h2><a href="admin_homepage.jsp">Go to Homepage</a></h2></center>
<%
}}
}catch(Exception e){e.printStackTrace();}   
        
        
        %>
    
        </form> 
    </body>
</html>

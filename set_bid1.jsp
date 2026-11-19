<%@page import="java.sql.*;" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <%
            mm.Conn1 c1 =new mm.Conn1();
           String a_id=request.getParameter("hid");
           String a_name=request.getParameter("hname");
           String bprice=request.getParameter("hprice");
           
            String status=request.getParameter("status");
            String start_date=request.getParameter("start_date");
            String start_time=request.getParameter("start_time");
            String duration=request.getParameter("duration");
               int n=c1.executeUpdate("update arts set status='"+status+"',start_date='"+start_date+"',start_time='"+start_time+"',duration='"+duration+"' where art_id='"+a_id+"'");        
                if(n>0){
                    
                    response.sendRedirect("admin_homepage.jsp");
                }
    
    
    %>
    </body>
</html>

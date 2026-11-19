<%@page import="java.sql.*;" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Art Gallery</title>
    </head>
    <body>
        <% 
            mm.Conn1 c1=new mm.Conn1();
            String bid_price=request.getParameter("b_price");
            String a_id=session.getAttribute("art_id").toString();
            ResultSet rs=c1.executeQuery("select * from arts where art_id='"+a_id+"'");
            if(rs.next()){
                int n=c1.executeUpdate("delete from arts where art_id='"+a_id+"'");
                if(n>0){
                  
                }
            } 
        
        %>
    </body>
</html>

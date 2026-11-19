<%@page import="java.sql.*;" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Art Gallery</title>
    </head>
    <body>
        <%
          mm.Conn1 c1 =new mm.Conn1();
         
          String art_id=request.getParameter("a_id");
          String user_id=request.getParameter("uid");
          String uname=request.getParameter("uname");
          String bprice=request.getParameter("bprice");
          String ubid=request.getParameter("b_price");
          String aname=request.getParameter("a_name");
          String email=request.getParameter("email");
          out.print(art_id+"<br>");
          out.print(user_id+"<br>");
          out.print(uname+"<br>");
          out.print(bprice+"<br>");out.print(ubid+"<br>");
          out.print(aname+"<br>");
          out.print(email+"<br>");
          
        ResultSet  rs1=c1.executeQuery("select * from bid where art_id='"+art_id+"' and user_id='"+user_id+"'");
          if(rs1.next()){
              
              out.println("<script>");
              out.println("alert('You have already made a bid for this art');");
              response.sendRedirect("page1.jsp");
              out.println("</script>");
          }
          else{
          int rs=c1.executeUpdate("insert into bid values('"+art_id+"','"+aname+"','"+user_id+"','"+uname+"','"+bprice+"','"+ubid+"','"+email+"')");
          if(rs>0){
              response.sendRedirect("page1.jsp");
          }}
        %>
        
    </body>
</html>

<%@page import ="java.sql.*;"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="cn" scope="page" class="mm.Conn1" />
<!DOCTYPE html>
<html>
   
    <body>
        <% 
          String uname=request.getParameter("uname");
          String pass=request.getParameter("pass");
          ResultSet rss=cn.executeQuery("select * from users where admin_name='"+uname+"' and admin_pass='"+pass+"' ");
          if(rss.next()){
                 
              session.setAttribute("username",uname);
              session.setAttribute("password",pass);
              session.setAttribute("id",rss.getString("user_id"));
              session.setAttribute("email",rss.getString("email"));
              response.sendRedirect("admin_homepage.jsp");
          }
          ResultSet rs=cn.executeQuery("select * from users where username='"+uname+"' and user_pass='"+pass+"' ");
          if(rs.next()){
              session.setAttribute("username",uname);
              session.setAttribute("password",pass);
              session.setAttribute("id",rs.getInt("user_id"));
              session.setAttribute("email",rs.getString("email"));
              response.sendRedirect("page1.jsp");
          }
           
          %>
    </body>
</html>
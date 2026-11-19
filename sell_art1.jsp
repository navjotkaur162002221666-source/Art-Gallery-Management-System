<%@page import="java.util.Properties;"%>
<%@page import="javax.mail.Session;"%>
<%@page import="javax.mail.Message;"%>
<%@page import="javax.mail.Transport;"%>
<%@page import="javax.mail.Transport;"%>
<%@page import="javax.mail.Authenticator;"%>
<%@page import="javax.mail.MessagingException;"%>
<%@page import="javax.mail.internet.InternetAddress;"%>
<%@page import="javax.mail.PasswordAuthentication;"%>
<%@page import="javax.mail.internet.MimeMessage;"%>
<%@page import="java.sql.*;" %>
<jsp:useBean id="cn" scope="page" class="mm.Conn1" />

<% 
   String uid=request.getParameter("user_id");
   String art_id=request.getParameter("art_id");
   String uemail=request.getParameter("email");
   String art_name=request.getParameter("art_name");
   String status=request.getParameter("status");
   String uname=request.getParameter("username");
   String ubid=request.getParameter("ubid");

    out.print(uid+"<br>");
    out.print(art_id+"<br>");
    out.print(uemail+"<br>");
    out.print(art_name+"<br>");
    out.print(status+"<br>");
    out.print(uname+"<br>");
    out.print(ubid+"<br>");
  
   
   int n=cn.executeUpdate("update arts set buyer='"+uname+"',buyer_email='"+uemail+"',sold_price='"+ubid+"',buyer_id='"+uid+"',status='"+status+"' where art_id='"+art_id+"'");
              if(n>0){
                  int n1=cn.executeUpdate("delete from bid where art_id='"+art_id+"'");
                  if(n1>0){
  
   
   
   
       
       
           String to=uemail;
           String sub="Result of Online Art Gallery Bidding";
           String msg="Your Bid for Art("+art_name+") is Successful. You have got that Art for Rs."+ubid+" only.";
           final String user="rohitcocth9@gmail.com";
           final String pass="clashofclans";
    
  Properties props = new Properties();
        props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");	
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        
        Session session1 = Session.getInstance(props,new Authenticator() 
        {
            
            protected PasswordAuthentication getPasswordAuthentication() 
            {
                return new PasswordAuthentication(user, pass);
            }
        });

        try 
        {
            Message message = new MimeMessage(session1);
            
            message.setFrom(new InternetAddress(user));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
            message.setSubject(sub);
            message.setText(msg);
            
            Transport.send(message);
            
             response.sendRedirect("check_orders.jsp");
            
        } catch (MessagingException e) 
        {
            
            
            response.sendRedirect("mail_error.jsp");
        }  
   }
              }
%>
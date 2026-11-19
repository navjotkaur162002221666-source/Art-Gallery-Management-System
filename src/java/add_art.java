/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.fileupload.*;
import java.sql.*;
import javax.servlet.annotation.WebServlet;
@WebServlet(value="/login")
public class add_art extends HttpServlet {

   
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String aname="";
     String cname="";
     
     String cdate="";
     String bprice="";
     
     String image="";
     
 boolean isMultipart = ServletFileUpload.isMultipartContent(request);
 if (!isMultipart)
 {
 }
 else
 {
 ServletFileUpload servletFileUpload = new ServletFileUpload(new DiskFileItemFactory());
 List items = null;
   try
   {
items = servletFileUpload.parseRequest(request);
   }
   catch (FileUploadException e)
   {
       e.printStackTrace();
   }
   Iterator itr = items.iterator();
   while (itr.hasNext())
	   {
   FileItem item = (FileItem) itr.next();
   if (item.isFormField())
	   {
	      String name = item.getFieldName();
		  String value = item.getString();
                  System.out.println("name "+name);
                  System.out.println("value "+value);
                   if(name.equals("aname"))
                      aname=value;
                   if(name.equals("cname"))
                      cname=value;
                   
                   
                   if(name.equals("cdate"))
                     cdate=value;
                   if(name.equals("bprice"))
                       bprice=value;
                   if(name.equals("image"))
                      image=value;
                  
             

        }
   else
	   {
    try
    {
   String itemName = item.getName();
image = FilenameUtils.getName(itemName);

File savedFile = new File(getServletContext().getRealPath("/")+"../../web/Arts/"+image);
     item.write(savedFile);
     }
    catch (Exception e)
    {
        e.printStackTrace();
    }
   }
   }
   }
try{
    mm.Conn1 c1=new mm.Conn1();

int s1=(c1.executeUpdate("insert into arts(art_name,creator_name,creation_date,base_price,image,upload_date,upload_time) values('"+aname+"','"+cname+"','"+cdate+"','"+bprice+"','"+image+"',current_date(),current_time())"));
if(s1>0)
{
    out.print("<script>");
out.println("alert('Registration Success')");
out.print("</script>");
out.println("alert('Art Added')");
response.sendRedirect("index.jsp");
}

 }
catch(Exception e)
{
    out.println(e);
}
  
            
        }
    }

   
}

<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page import="org.apache.commons.io.FilenameUtils"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<jsp:useBean id="cn" scope="page" class="mm.Conn1" />
<center><h1>Upload Completed.</h1></center>

<%
    String aname = "";
    String cname = "";

    String cdate = "";
    String bprice = "";

    String image = "";
    boolean isMultipart = ServletFileUpload.isMultipartContent(request);
    if (!isMultipart) {
    } else {
        ServletFileUpload servletFileUpload = new ServletFileUpload(new DiskFileItemFactory());
        List items = null;
        try {
            items = servletFileUpload.parseRequest(request);
        } catch (FileUploadException e) {
            e.printStackTrace();
        }
        Iterator itr = items.iterator();
        while (itr.hasNext()) {
            FileItem item = (FileItem) itr.next();
            if (item.isFormField()) {
                String name = item.getFieldName();
                String value = item.getString();
                System.out.println("name " + name);
                System.out.println("value " + value);

                if (name.equals("aname")) {
                    aname = value;
                }
                if (name.equals("cname")) {
                    cname = value;
                }

                if (name.equals("cdate")) {
                    cdate = value;
                }
                if (name.equals("bprice")) {
                    bprice = value;
                }
                if (name.equals("image")) {
                    image = value;
                }
            } else {
                try {
                    String itemName = item.getName();
//out.println("Actual File "+FilenameUtils.getName(itemName));
//out.println("path="+config.getServletContext().getRealPath("/"));
                    image = FilenameUtils.getName(itemName);
//System.out.println("real "+real);
//System.out.println(config.getServletContext().getRealPath("/"));
                    File savedFile = new File(config.getServletContext().getRealPath("/") + "../../web/Arts/" + image);
                    item.write(savedFile);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }
    try {

        //int s1 = (cn.executeUpdate("insert into arts(art_name,creator_name,creation_date,base_price,image,upload_date,upload_time) values('" + aname + "','" + cname + "','" + cdate + "','" + bprice + "','" + image + "',current_date(),current_time())"));
        int s1 = (cn.executeUpdate("insert into arts(art_name,creator_name,creation_date,base_price,image,upload_date) values('" + aname + "','" + cname + "','" + cdate + "','" + bprice + "','" + image + "',current_date())"));
        if (s1 > 0) {
            out.println("Successful");
            response.sendRedirect("add_art.jsp");
        } else {
            out.println("<h1>Sorry!!!something went wrong...");
            response.sendRedirect("error.jsp");
        }
    } catch (Exception e) {
        out.println(e);
    }
%>      



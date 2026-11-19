<%@ page import="java.sql.*;"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Art Gallery</title>
    </head>
    <body>
        <div><center><h1>Welcome To Art Gallery</h1></center></div>
        <table>
            <tr>
                <% 
                    mm.Conn1 c1=new mm.Conn1();
                    ResultSet rs=c1.executeQuery("select * from arts");
                    while(rs.next()){%>
                    <td><img  src=Arts/<%=rs.getString("image")%> width=300px  height=300><br><%rs.getString("art_name");%><br><a href="bid.jsp?a_id=<%=rs.getString("art_id")%>">Bid For this Art</a>
                    <%}%>
            </tr></table>
                
                <td>
        </table>
    </body>
</html>

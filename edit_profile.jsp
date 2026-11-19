<%@page import="java.sql.*;" %>
<jsp:useBean id="cn" scope="page" class="mm.Conn1" />
<%
  String uname=(String)session.getAttribute("username");
  String pass=(String)session.getAttribute("password");
 
if((uname.equals("") || uname.equals(null)) && (pass.equals("") || pass.equals(null))){
    response.sendRedirect("Login_page.html");
}
else{
%>
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
    
<script>
function check()
{
    
   
    if(f1.from.value=="" || f1.from.value==null){
        alert("Enter a Valid E-mail id");
    }
    n=f1.from.value;//abc
    s=n.indexOf("@");
    if(s==-1)
    {
        alert("must  include @");
        return;
    } 
    s=n.indexOf(".com");
    if(s==-1)
    {
        alert("enter  email  properly");
        return;
    }
    
   if(f1.password.value=="" || f1.password.value==null){
        alert("Enter Password");
    }
    if(f1.subject.value=="" || f1.subject.value==null){
        alert("Enter Subject");
    }
    if(f1.message.value=="" || f1.message.value==null){
        alert("Enter message");
    }
    /*if(f1.image.value="" || f1.image.value=null){
        alert("Please Select an Image");
    }*/
    f1.submit();

}

</script>

<body>
<div id="header-wrapper">
  <header id="header">
    <div class="5grid-layout">
      <div class="row">
        <div class="4u" id="logo">
          <h1><a href="#" class="mobileUI-site-name">Art Gallery</a></h1>
          <p>by Hemant</p>   
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
 </div><br><br>
		
		<div>
                    <center><h2>EDIT YOUR PROFILE</h2></center>
                    <br><br><br>

<script>
function check()
{
    
    if(f1.username.value=="" || f1.username.value==null)
    {
        alert("Enter Username");
        return;
    }
    if(f1.password.value=="" || f1.password.value==null)
    {
        alert("Enter Password");
        return;
    }
   
    if(f1.email.value=="" || f1.email.value==null){
        alert("Enter a Valid E-mail id");
    }
    n=f1.email.value;//abc
    s=n.indexOf("@");
    if(s==-1)
    {
        alert("must  include @");
        return;
    } 
    s=n.indexOf(".com");
    if(s==-1)
    {
        alert("enter  email  properly");
        return;
    }
   if(f1.mobile.value=="" || f1.mobile.value==null){
        alert("Enter Mobile Number");
    }
    
    if(f1.mobile.value.length<10 || f1.mobile.value.length>10)
    {
        alert("Enter valid Mobile Number");
    }
    if(/[a-z]/.test(f1.mobile.value))
    {
        alert("Enter valid Mobile Number");
    }
    /*if(f1.image.value="" || f1.image.value=null){
        alert("Please Select an Image");
    }*/
    f1.submit();

}

</script>
    <body><form action="edit_profile1.jsp" method="post" name="f1">
       <%  
           String username=(String)session.getAttribute("username");
           String password=(String)session.getAttribute("password");
            ResultSet rs=cn.executeQuery("select * from users where username='"+username+"' and user_pass='"+password+"' ");
          if(rs.next()){
           
           %>
           <h2><center> <table><tr><td>ID</td><td><input type="text" name="id" value="<%=rs.getInt("user_id")%>" required="true" readonly="readonly"></td></tr>
               <tr><td>Username</td><td><input type="text" name="username" value="<%=rs.getString("username")%>" required="true"></td></tr>
               <tr><td>Password</td><td><input type="text" name="password" value="<%=rs.getString("user_pass")%>" required="true"></td></tr>
               <tr><td>Email_id</td><td><input type="text" name="email" value="<%=rs.getString("email")%>" required="true"></td></tr>
               <tr><td>Mobile Number</td><td><input type="text" name="mobile" value="<%=rs.getString("mobile")%>" required="true"></td></tr>
           <%}
            %>
                       
               <tr><td colspan="2"><center><input type="button" value="Update" onclick="check()"></center></td></tr>
           </table>    </center></h2>       
        </form> 
    </body>
</html>
	
<%}%>
        <style>
    td {
    height: 50px;
    vertical-align: top;
}
    table {
    width: 50%;
    align:center;
}

th {
    height: 50px;
}


table, th, td {
   
}
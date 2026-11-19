
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE HTML>
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
    
    <body>
       <div id="header-wrapper">
  <header id="header">
    <div class="5grid-layout">
      <div class="row">
        <div class="4u" id="logo">
          <h1><a href="#" class="mobileUI-site-name">Art Gallery</a></h1>
          <p>by Navjot Kaur</p>   
        </div>
        <div class="8u" id="menu"><h2>ADD NEW ART</h2>
            <nav class="mobileUI-site-nav">
            <ul>
             
                <li><a href="logout.jsp"><h3>Logout</h3></a></li>
            </ul>
          </nav>
        </div>
      </div>
    </div>
  </header>
</div>
       
        <br><br><br><br><br>
              
           
        <h2>
       &nbsp;        <a href='add_art.jsp'>ADD NEW ART</a>&nbsp;|
       <a href='view_arts.jsp'>VIEW ALL ARTS</a>&nbsp;|
                <a href='last_bids.jsp'>VIEW LAST BIDS</a>&nbsp;|
            <a href='current_bids.jsp'>VIEW CURRENT BID</a>&nbsp;|
            <a href="set_bid.jsp">SET ARTS FOR BIDDING</a>  &nbsp; <br>
       </h2>
        <script type="text/javascript">
        function valid(){
    if(f1.aname.getText()=="" || f1.aname.getText()==null)
    {
        alert("Please Enter Name of Art");
        return;
    }
    if(/[0-9]/.test(f1.aname.value))
{
  alert("this  format not accepted");
return;
}
    if(f1.cname.getText()=="" || f1.cname.getText()==null)
    {
        alert("Please Enter Name of Art");
        return;
    }
if(/[0-9]/.test(f1.cname.value))
    {
        alert("This  Format Not Accepted");
        return;
    }
if(f1.cdate.getText()=="" || f1.cdate.getText()==null)
    {
        alert("Please Enter Name of Art");
        return;
    }
if(f1.bprice.getText()=="" || f1.bprice.getText()==null)
    {
        alert("Please Enter Name of Art");
        return;
    } 
if(/[a-zA-Z]/.test(f1.bprice.value))
    {
        alert("This  Format Not Accepted");
        return;
    }
             f1.submit();
         }
   
    </script><form name="f1" action="add_art1.jsp" enctype="multipart/form-data" method="post" >
        <br><br><br><br>
        <center> <h2><table cellspacing="10"><tr><th>Name of Art :</th><td><input type="text" name="aname" placeholder="Enter Name of Art"></td></tr>
        <tr><th>Creator's Name :</th><td><input type='text' name='cname' placeholder="Enter Artist Name"></td></tr>
        <tr><th>Created Date: </th><td><input type="date" name='cdate'></td></tr>
        <tr><th>Base Price :</th><td><input type='text' name='bprice' placeholder="Enter Base Price"></td></tr>
        <tr><th>Image :</th><td><input type="file" name='image'></td></tr>
        <tr><th><input type="submit" value='Upload'></th><th><input type='reset' value='Clear'></th></tr> 
                </table></h2></center></form>
    </body>
</html>
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
    padding:10px;
 
}
table tr:nth-child(2n){
    background:#f2f2f2;
}


</style>
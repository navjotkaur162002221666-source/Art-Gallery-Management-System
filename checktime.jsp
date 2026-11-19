<script src="http://code.jquery.com/jquery-1.7.2.min.js"></script>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date;" %>
<%
DateFormat t=new SimpleDateFormat("HH:mm");
Date t1=new Date();
String tt=t.format(t1);
Date t3 =t.parse(tt);
out.print(t.format(t1));
int a=10;
int b=5;
String time="05:38";
Date t2 =t.parse(time);
 if(t3.equals(t2) || t3.after(t2)){
%>
<form name=f1><input type="hidden" name="ti" value="<%out.print(b);%>">
    <input type="time" name="mytime">
</form>
  
  
  
  <script type='text/javascript'>
      
  
    var secondsBeforeExpire = f1.ti.value;
    
    // This will trigger your timer to begin
    var timer = setInterval(function(){
        // If the timer has expired, disable your button and stop the timer
        if(secondsBeforeExpire <= 0){
            clearInterval(timer);
            $("#ExampleButton").prop('disabled',true);
        }
        // Otherwise the timer should tick and display the results
        else{
            // Decrement your time remaining
            secondsBeforeExpire--;
            $("#time-remaining").text(secondsBeforeExpire);      
        }
    },1000);
  </script>

<body>
  This button will be disabled in <span id='time-remaining'></span> seconds.<hr />
  <button id='ExampleButton'>Example Button</button>
</body>
<%}%>
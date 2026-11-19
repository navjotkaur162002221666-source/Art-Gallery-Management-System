<html> 
    <head> 
        <title></title> 
        <script language="javascript" type="text/javascript">
            today = new Date();
            todayEpoch = today.getTime(); 
            target = new Date("25 April, 2017"); 
            targetEpoch = target.getTime(); 
            daysLeft = Math.floor(((targetEpoch - todayEpoch) / (60*60*24)) / 1000);
        </script> 
    </head> 
    <body>  
      
        <h1>Time Left is <script>document.write(daysLeft);</script>
            days. Are you ready? </h1> 
    </body>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>i5Tech-Consultants Report</title>
    <!-- Bootstrap -->
    <link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
  	<link rel="stylesheet" type="text/css" href="CSS/style.css">
  	<script type="text/javascript" src="script.js"></script>
  	<SCRIPT type="text/javascript">
	window.history.forward();
	function noBack() { window.history.forward(); }

	function myFunction() {
	    alert("Why click me? Click on Register button!");
	}

</SCRIPT>
  </head>
  <body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">

    <div class="container-fluid">
    	<div class="row">
    		<div class="col-md-1">
    		<div class="logoQuicklinks" style="">
 			<center><img alt="i5Tech" src="Images/Picture1.png" width="120" height="90" ></center>
 			</div>
    		</div>
    		<div class="col-md-10" >
    		<div class=" headin" style="">
    		<center>
			    <img alt="i5Tech" src="Images/logo.png" width="400" height="70" >
			    </center>
				<center>
				<h6 style="">Consultants Report</h6>
			    </center>
			    </div>
    		</div>
    		<div class="col-md-1"  >
    		<div class="logoQuicklinks" style="">
			<ul style="list-style-type:none;float:left;">
                    <li>Contact Us: <br>(913) 725-8382 </li>
                    <li> <a href="http://www.i5techinc.com/">Main Website</a></li>
                    <li> <a href="">Login</a></li>
                </ul>	
			</div>
    		</div>		
    	</div>
    	<div class="row">
    		<div class="col-md-1" style="">
    			<div class="navBar" style="background-color: #e4e4e4;">
    			
        			<br/>
    			<img alt="i5Tech Inc" src="Images/vlogo.png" widht="2%" height="700">
			
    			</div>
    		</div>
    		<div class="col-md-11" >

    			<div class="navBar" style="background-color: lavender;">
						<div id="content" style="text-align: center;">
						
						<span style="font-size: 35px;font-family:fantasy;">
						<b><span style="font-size: 35px;font-family:fantasy;color: grey;">Welcome To Consultants Report App</span></b><br>
						Login To Your Account</span><br/><br/>	
    			<form name="myForm" method="post" action="LoginServlet">
    				<label>UserName:</label><input type="text" name="uName" placeholder="Enter UserName"><br/><br/>
    				<label>Password:</label><input type="password" name="pwd" placeholder="Enter Password"><br/><br/>
    				<button type="submit" class="btn-primary btn-sm">Login</button><br>
    				<span onclick="myFunction()" style="cursor:pointer;text-decoration: underline;">Don't Have an Account?</span>&nbsp;&nbsp;<a href="registration.jsp" class="btn-warning btn-sm">Register</a>
    			</form>

						</div>
    			</div>
    		</div>
    	</div>
    	 <div class="row">
    		<div class="col-md-12" style="">
    			<div class="footer" style=" text-align:center; background-color: thistle;min-height:25px;margin:0px -15px 5px -15px; ">
   				Copy Right &copy; &nbsp; MDP
    </div>
    </div>
    </div>	
    
	</div>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
  </body>
</html>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Registration Form</title>
    <!-- Bootstrap -->
    <link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
  	<link rel="stylesheet" type="text/css" href="CSS/style.css">
  	<script type="text/javascript" src="script.js"></script>
  </head>
  <body>

    <div class="container-fluid">
    	<div class="row">
    		<div class="col-md-1">
    		<div class="logoQuicklinks" style="">
 			<center><a href="index.jsp"><img alt="i5Tech" src="Images/Picture1.png" width="120" height="90" ></a></center>
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
                    <li> <a href="index.jsp">Login</a></li>
                </ul>		
			</div>
    		</div>		
    	</div>
    	<div class="row">
    		<div class="col-md-1" style="">
    			<div class="navBar" style="background-color: #e4e4e4;">
    			<br/>
    			<img alt="i5Tech Inc" src="Images/vlogo.png" widht="2%" height="730">
    			</div>
    		</div>
    		<div class="col-md-11" >

    			<div class="navBar" style="background-color: lavender;">
						<div id="content" style="text-align: center;">
						<br>
						<span style="font-size: 40px;font-family: fantasy;">Registration Form</span>
<form action="RegisterServlet" method="post">
<center>
<table>
<tr>
<td>First Name <sup style="color:red;">*</sup>:</td><td><input type="text" name="firstName" maxlength="30" required/>(max 30 characters a-z and A-Z)</td>
</tr>
<tr><td>Last Name <sup style="color:red;">*</sup>:</td><td><input type="text" name="lastName" maxlength="30" required/>(max 30 characters a-z and A-Z)</td></tr>
<tr>
<td>Middle Name</td>
<td><input type="text" name="middleName" maxlength="30"/>
(max 30 characters a-z and A-Z)
</td>
</tr>
<tr><td>User Name<sup style="color:red;">*</sup> :</td><td><input type="text" name="userId" required/></td></tr>
<tr><td>Password <sup style="color:red;">*</sup>:</td><td><input type="password" name="password" required/></td></tr>
<tr><td>Email Id <sup style="color:red;">*</sup>:</td><td><input type="email" name="email" required/></td></tr>
<tr><td>Technology <sup style="color:red;">*</sup>:</td><td><input type="text" name="tech" required/></td></tr>
<tr><td>Marketing Head <sup style="color:red;">*</sup>:</td><td><input type="text" name="mHead" required/></td></tr>
<tr>
<td colspan="2" align="center">
<input type="submit" value="Submit" class="btn-primary">
<input type="reset" value="Reset" class="btn-warning">
</td>
</tr>
</table>
</center>
<br/>
</form>
<!--  
<h3>Student Registration Form</h3>
<form action="RegisterServlet" method="POST">
 
<table align="center" cellpadding = "10">
<tr>
<td>First Name</td>
<td><input type="text" name="firstName" maxlength="30"/>
(max 30 characters a-z and A-Z)
</td>
</tr>
<tr>
<td>Middle Name</td>
<td><input type="text" name="middleName" maxlength="30"/>
(max 30 characters a-z and A-Z)
</td>
</tr>
 
<tr>
<td>Last Name</td>
<td><input type="text" name="lastName" maxlength="30"/>
(max 30 characters a-z and A-Z)
</td>
</tr>
 
<tr>
<td>Email</td>
<td><input type="text" name="email" maxlength="100" /></td>
</tr>

<tr>
<td>User ID</td>
<td><input type="text" name="userId" maxlength="100" /></td>
</tr>
<tr>
<td>Password</td>
<td><input type="text" name="password" maxlength="100" /></td>
</tr>

<tr>
<td colspan="2" align="center">
<input type="submit" value="Submit">
<input type="reset" value="Reset">
</td>
</tr>
</table>
 
</form>
-->

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





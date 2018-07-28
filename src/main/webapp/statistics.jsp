<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" ng-app="myApp">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>i5Tech-Consultants Report</title>
    <!-- Bootstrap -->
    <link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
  	<link rel="stylesheet" type="text/css" href="CSS/style.css">
 <!--  	<script type="text/javascript" src="script.js"></script>--> 
  	<script type="text/javascript" src="ChartScreen/js/fusioncharts.js"></script>
    <script type="text/javascript" src="ChartScreen/angular.js"></script>
    <script type="text/javascript" src="ChartScreen/app.js"></script>
    <script type="text/javascript" src="ChartScreen/angular-resource.js"></script>
    
    <script type="text/javascript" src="ChartScreen/wrappers/angularjs/angular-fusioncharts.min.js"></script>
  	
  	
  </head>
  <body>

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
                    
                </ul>	
			</div>
    		</div>		
    	</div>
    	<div class="row">
    		<div class="col-md-1" style="">
    			<div class="navBar" style="background-color: #e4e4e4;">
    			<nav class="forNav">
            <ul>
                <li> <a class="active" href="home.jsp">Home&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                <li><a href="file:///C:/Users/Manideep/Desktop/JAVA/AngularJS/CalculatorApp/HTML_Class/First.html" target="blank">Gallery&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                <li><a href="statistics.jsp">Statistics&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                <li><a href="about.jsp">About&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                <li><a href="http://www.i5techinc.com/" target="blank">Contact&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
            </ul>
        </nav>
			
    			</div>
    		</div>
    		<div class="col-md-11" >

    			<div class="navBar" style="background-color: lavender;">
						<div id="content" style="text-align: center;">
						
						<span style="font-size: 35px;font-family:fantasy;">Statistics</span><br/><br/>

						<div ng-controller="MyController"
							ng-init="mms=' '; myDataSource={
		        chart: {
		            caption: 'Statistics of Consultants',
		            subCaption: 'Total Requirements of Consultants',
		        },
		        data: profiles 
		    };">
							<div style="position: fixed; top: 125px; right: 20px;">
								<form action="LogoutServlet" method="post">
									<input type="submit" value="Logout" class="btn-success btn-sm" />
								</form>
							</div>
							<div style="color: lavender;">{{myDataSource = { chart: {
								caption: "Statistics of Consultants", subCaption: "Total
								Requirements of Consultants", }, data: profiles } }}</div>

							<fusioncharts width="800" height="500" type="column2d"
								datasource="{{myDataSource}}"></fusioncharts>
							<div
								style="position: fixed; bottom: 8; right: 0; width: 300px; color: lavender; height: 100px;">
								{{myDataSource = { chart: { caption: "Statistics of
								Consultants", subCaption: "Total Client Submissions of
								Consultants", }, data: profilesb } }}</div>



							<fusioncharts width="800" height="500" type="column2d"
								datasource="{{myDataSource}}"></fusioncharts>


							<form action="ResetValues" method="post">
								<input type="submit" value="Reset" class="btn-danger btn-sm" />
							</form>
						</div>

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





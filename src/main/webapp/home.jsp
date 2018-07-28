<%@page import="javax.jws.soap.SOAPBinding.Style"%>
<%@page import="java.util.List"%>
<%@page import="com.javawebtutor.service.LoginService"%>
<%@page import="java.util.Date"%>
<%@page import="com.javawebtutor.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Welcome-i5Tech Inc </title>
 <!-- Bootstrap -->
    <link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
  	<link rel="stylesheet" type="text/css" href="CSS/style.css">
  	<SCRIPT type="text/javascript">
	window.history.forward();
	function noBack() { window.history.forward(); }
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
                    
                </ul>		
			</div>
    		</div>		
    	</div>
    	<div class="row">
    		<div class="col-md-1" style="">
    			<div class="navBar" style="background-color: #e4e4e4;">
    			
    			<nav class="forNav">
            <ul>
                <li> <a class="active" href="file:///C:/Users/Manideep/Desktop/JAVA/AngularJS/CalculatorApp/HTML_Class/First.html"
                        target="blank">Home&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
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
					
    	<center>
	 <div id="container">
		 <span style="font-size: 30px;font-family: fantasy;">Hello ..! </span><br>
			 
			 <%=new Date()%><br/>
			 <%
				 User user = (User) session.getAttribute("user");
			 	String unn = user.getUserId(); 	
			 %>	
			 
			 <% if (user.getFirstName().equalsIgnoreCase("Manideep") ) { %>
    		 <div style="position:fixed;top:125px;right:100px;">
    		  <form action="ResetValues" method="post">             
               <input type="submit" value="Reset Values" class="btn-danger btn-sm"/>
               </form>
               </div>
				<% }  %>
      			
			 
			 
			 <b>Welcome <%= user.getFirstName() + " " + user.getLastName()%></b>		
			 <br/>
			 <div style="position:fixed;top:125px;right:20px;">
			 <form action="LogoutServlet" method="post">
    		<input type="submit" value="Logout" class="btn-success btn-sm"/>
			</form>
			</div>		 

		  <br/>
		 <form action="ProcessServlet" method="post">
		 <table>
			 <thead>
				 <tr>
					 <th style="text-align: center;">Marketing Head</th>
					 <th style="text-align: center;">Requirements</th>
					 <th style="text-align: center;">Submissions</th>					
				 </tr>
			 </thead>
			 <tbody>
				 <tr>
					 <td>Venkat</td>
					 <td><input type="number" name="vReq" /> </td>
					 <td><input type="number" name="vSub" /></td>
				 </tr>
				 <tr>
					 <td>Peter</td>
					 <td><input type="number" name="pReq"/></td>
					 <td><input type="number" name="pSub"/></td>
				 </tr>
				 <tr>
					 <td>Sanjay</td>
					 <td><input type="number" name="sReq"/></td>
					 <td><input type="number" name="sSub"/></td>
				 </tr> 
				 <tr>
					<td colspan="2" align="center">
					<input type="submit" value="Submit" class="btn-primary">
					<input type="reset" value="Reset" class="btn-warning">
					</td>
				</tr>
				 
			 <tbody>
		 </table>
		 <input type="text"  name="un" style="color:lavender; border:none; background: transparent;" value=<%= user.getUserId()%> />
			 <input type="text"  name="ps" style="color:lavender; border:none; background: transparent;" value=<%= user.getPassword()%> />	 
		 </form>
		 
		 <table border="1px solid black">
			 <thead>
				 <tr>
					 <th>Peter Req</th>
					 <th>Peter Sub</th>
					 <th>Sanjay Req</th>
					 <th>Sanjay Sub</th>
					 <th>Venkat Req</th>
					 <th>Venkat Sub</th>					
				 </tr>
			 </thead>
			 <tbody>
				 <%
					 LoginService loginService = new LoginService();
					 List<User> list = loginService.getListOfUsers();
					 
				 %>
				 <tr>
					 <td><%=user.getPreq()%></td>
					 <td><%=user.getPsub()%></td>
					 <td><%=user.getSreq()%></td>
					 <td><%=user.getSsub()%></td>
					 <td><%=user.getVreq()%></td>
					 <td><%=user.getVsub()%></td>
				 </tr>
				 
			 <tbody>
		 </table>
		 <h5><i><sup style="color:red;">* </sup>Data shown in the above table is according to your previous submissions. Please log in and logout to get the latest submitted data.</i></h5>
		
	 </div>
	</center>	
    	
    	
						
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
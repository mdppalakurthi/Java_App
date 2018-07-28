package com.javawebtutor.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javawebtutor.model.User;
import com.javawebtutor.service.LoginService;
import com.javawebtutor.service.ProcessService;
import com.javawebtutor.service.RegisterService;


public class ProcessServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
	 response.setContentType("text/html;charset=UTF-8");
	 PrintWriter out = response.getWriter();
	 String vReq = request.getParameter("vReq");
	 String vSub = request.getParameter("vSub");
	 String pReq = request.getParameter("pReq");
	 String pSub = request.getParameter("pSub");
	 String sReq = request.getParameter("sReq");
	 String sSub = request.getParameter("sSub");
	 String un =request.getParameter("un");
	 String ps =request.getParameter("ps");
	 
	 if(vReq=="")
		 vReq="0";
	 if(vSub=="")
		vSub="0";
	 if(sReq=="")
		 sReq="0";
	 if(sSub=="")
		sSub="0";
	 if(pReq=="")
		 pReq="0";
	 if(pSub=="")
		pSub="0";

	 

			
	 try {	
		 LoginService loginService = new LoginService();
		 User user = loginService.getUserByUserId(un);
		 user.setRequirements(Integer.parseInt(vReq));
		 user.setRequirements(Integer.parseInt(sReq));
		 user.setRequirements(Integer.parseInt(pReq));
		 user.setSubmissions(Integer.parseInt(vSub));
		 user.setSubmissions(Integer.parseInt(sSub));
		 user.setSubmissions(Integer.parseInt(pSub));
		 user.updateRRS(Integer.parseInt(vReq),Integer.parseInt(sReq),Integer.parseInt(pReq),
				 Integer.parseInt(vSub),Integer.parseInt(sSub),Integer.parseInt(pSub));
		 ProcessService pService = new ProcessService();
		 pService.processUpdate(user);
		 /*response.setContentType("text/html;charset=UTF-8");
		 PrintWriter outt = response.getWriter();
		 
		 outt.println("<html>");
		 outt.println("<head>");		
		 outt.println("<title>Registration Successful</title>");		
		 outt.println("</head>");
		 outt.println("<body>");
		 outt.println("<center>");

			 outt.println("<h1>Thanks for Registering with us :</h1>");
			 
			 outt.println("</center>");
			 outt.println("</body>");
			 outt.println("</html>");
*/	response.sendRedirect(request.getContextPath() + "/home.jsp");	 
		 
	 } 
	 finally{
	 }
	 }
/*		 RegisterService registerService = new RegisterService();
		 boolean result = registerService.register(user);		
		 out.println("<html>");
		 out.println("<head>");		
		 out.println("<title>Registration Successful</title>");		
		 out.println("</head>");
		 out.println("<body>");
		 out.println("<center>");
		 if(result){
			 out.println("<h1>Thanks for Registering with us :</h1>");
			 out.println("To login with new UserId and Password<a href=index.jsp>Click here</a>");
		 }else{
			 out.println("<h1>Registration Failed</h1>");
			 out.println("To try again<a href=registration.jsp>Click here</a>");
		 }
		 out.println("</center>");
		 out.println("</body>");
		 out.println("</html>");
	 } finally {		
		 out.close();
	 }
*/
	}


package com.javawebtutor.controller;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LogoutServlet
 */
public class LogoutServlet extends HttpServlet {
	
	public HttpSession session ;
	    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        request.getSession().invalidate();
	        
	     	        
	        response.sendRedirect(request.getContextPath() + "/index.jsp");
	     
	        /*if (session == null || session.getAttribute("userId") == null) {
	        	response.sendRedirect("index.jsp"); // No logged-in user found, so redirect to login page.
	        	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
	            response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
	            response.setDateHeader("Expires", 0);
	             
	        }*/
	        
	        
	 }
	       
	        }


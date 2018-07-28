package com.javawebtutor.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javawebtutor.model.User;
import com.javawebtutor.service.GraphService;
import com.javawebtutor.service.LoginService;

/**
 * Servlet implementation class ResetValues
 */
public class ResetValues extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

	 GraphService graphService = new GraphService();
	 graphService.setResetValues();
			 response.sendRedirect("home.jsp");
	
}
	
}

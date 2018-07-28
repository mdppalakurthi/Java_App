package com.javawebtutor.service;

import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.javawebtutor.model.UserGraph;
import com.javawebtutor.model.UserGraphSub;

@Path("/service")
public class Service {
	
	GraphService gs = new GraphService();

	@GET
	@Path("/getAllUsersByJSON")
	@Produces(MediaType.APPLICATION_JSON)
	public List<UserGraph> getAllEmployeesByJSON(){
		return gs.getListOfUserss();
	}
	
	@GET
	@Path("/getAllUserSubByJSON")
	@Produces(MediaType.APPLICATION_JSON)
	public List<UserGraphSub> getAllEmployeessubByJSON(){
		return gs.getListOfUsersub();
	}
	

	@GET
	@Path("/getAllUsersByXML")
	@Produces(MediaType.APPLICATION_XML)
	public List<UserGraph> getAllEmployeesByXML(){
		return gs.getListOfUserss();
	}

}

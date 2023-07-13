<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Date" %>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Availability</title>
       <link rel="stylesheet" href="Navbar.css"></link>
       <link rel="icon" href="favicon.ico"></link>
</head>
<body id="Body">
        <%  
            String TrainingRoo = request.getParameter("Training Halls");
            String Sdat = request.getParameter("adate");
        
			Class.forName("com.mysql.jdbc.Driver");
	   		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306", "root", "12345");
	   		PreparedStatement ps = con.prepareStatement("select * from advancejava.trainingbooking where trainingHall = ? and startDate like ?");
	   		
	   		ps.setString(1, TrainingRoo);
	   		ps.setString(2, Sdat);
	   		
	   		ResultSet rs = ps.executeQuery();
	   		
	   		if(rs.next())
	   		{
	   	    	String id = rs.getString(1);
	   	    	String Empid = rs.getString(2);
	   	    	String th = rs.getString(3);
	   	    	String tit = rs.getString(4);
	   	    	String Sdate = rs.getString(5);
	   	    	String Stime = rs.getString(6);
	   	    	String Edate = rs.getString(7);
	   	    	String Etime = rs.getString(8);
	   	    	String desc = rs.getString(9);
	   	    	
	   	%>
	    	    <center>
	    	            <h1 style="width:25%;height:30px;font-size:27px; background-color : green;color: Aqua;">Not Available at </h1>
	    	            <pre style="font-size: 25px; background-color: transparent;">Date & Time : <strong><u style="background-color: orange;"><%= Sdate %> - <%= Stime %></u>
	      <u style="background-color: orange;"><%= Edate %> - <%= Etime %></u></strong></pre>
	    	     </center>
	    <%
	    	RequestDispatcher rd = request.getRequestDispatcher("Availability.jsp");
		    rd.include(request, response);
	   		}
	   		else
	   		{
	   	%>
	   	        <center>
	    	            <h1 style="width:30%;height:30px;font-size:27px; background-color : green;color: Aqua;">Available</h1>	    	      
	    	    </center>
	   	<%
	   	    RequestDispatcher rd = request.getRequestDispatcher("Availability.jsp");
	        rd.include(request, response);	
	   		}
	   	con.close();	
	   %>
</body>
</html>
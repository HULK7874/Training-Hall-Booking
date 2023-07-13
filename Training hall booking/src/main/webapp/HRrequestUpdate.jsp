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
<title>Status Update</title>
       <link rel="stylesheet" href="Navbar.css"></link>
       <link rel="icon" href="favicon.ico"></link>
</head>
<body>
        <%
            String idd = request.getParameter("zim");
    	    String Statu = request.getParameter("app");
           
			Class.forName("com.mysql.jdbc.Driver");
	   		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306", "root", "12345");
	   		PreparedStatement ps = con.prepareStatement ("Update advancejava.trainingBooking set status = ? where rid = ?");
	   		
	   		ps.setString(1, Statu);
	   		ps.setString(2, idd);
	   		
	   		int rs = ps.executeUpdate();
	   		
	   		if(rs>0)
	   		{
	    %>
	    	  <center><lable>Status Updated Successfull</lable></center>
	    <%
	        }
	   		else
	   		{
	   	%>
		      <center><lable>select the valid option's </lable></center>
		<%
	   		}
        %>
</body>
</html>
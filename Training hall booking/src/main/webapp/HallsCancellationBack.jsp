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
<title>Cancellation</title>
       <link rel="stylesheet" href="Navbar.css"></link>
       <link rel="icon" href="favicon.ico"></link>
       
       <style type="text/css">
       #tablee
       {
          
          border-collapse: collapse;
          display: inline;
          
       }
       .tdd,th
       {
          width:50%;
          height:30px;
          border : 3px solid black;
          background-color: gold;
       }
       h1
       {
          text-align: center;
          font-size: 20px;
       }
       #fieldsett
       {
       background-color: transparent;
       display:inline;
         width:100%;
         height:30%;
         box-shadow: 0px 0px 10px red;
         margin: 12px;
       }
   </style>
       
</head>
<body id="Body">
       <%
        String BookingID = request.getParameter("bide");       
 
        Class.forName("com.mysql.jdbc.Driver");
 		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306", "root", "12345");
 		PreparedStatement ps = con.prepareStatement("Delete from advancejava.trainingBooking where rid = ? ");
 		
 		ps.setString(1, BookingID);       
 	     
 		int rece = ps.executeUpdate();
 		
 		if(rece>0)
 		{
 	   	    	
 	   	    	%>
 		    <center>
	    	    <i>
	   	    	    <fieldset id="fieldsett">
	   	    	         <table id="tablee">
	   	    	                <tr>
	   	    	                    <td class="tdd">
	   	    	                        <label>Booking ID :</label></td><td class="tdd"><label><%= BookingID  %></label>
	   	    	                    </td>
	   	    	                </tr>
	   	    	         </table>
	   	    	         <h1 style="width:30%;height:30px;font-size:27px; background-color : green;color: Aqua;">Cancelled successfully</h1>	    	      
	   	    	      </fieldset>
	   	    </center>
	    	<%
	    	RequestDispatcher rd = request.getRequestDispatcher("HallsCancellation.jsp");
		    rd.include(request, response);
	    }

	    else
	    {
	    	%>
	    	    <center>
	    	                 <label style="font-size: 35px;">Booking ID : <strong><%= BookingID %></strong></label>
	    	                 <h1 style="width:30%;height:30px;font-size:27px; background-color : green;color: Aqua;">You have entered invalid Booking ID</h1>	    	      
	    	     </center>
	    	<%
	    	RequestDispatcher rd = request.getRequestDispatcher("HallsCancellation.jsp");
		    rd.include(request, response);
	    }
	    con.close();
   %>
</body>
</html>
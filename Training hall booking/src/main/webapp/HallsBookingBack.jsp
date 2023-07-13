<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Date" %>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Training Halls Booking</title>
       <link rel="stylesheet" href="Navbar.css"></link>
       <link rel="icon" href="favicon.ico"></link>
   <style type="text/css">
       table
       {
          border-collapse: collapse;
       }
       td,th
       {
          width:250px;
          height:10px;
          border : 1px solid black;
       }
       h3
       {
          text-align: center;
       }
       fieldset 
       {
	      width: 66%;
	      height: 90%;
	      box-shadow: 0px 0px 10px red;
	      margin-top: 3.5%
       }
   </style>
</head>
<body id="Body">
        <%
        
        String EmpID = request.getParameter("eid");
        
        String Thalls = request.getParameter("Training Halls");
  	    //int lId = Integer.parseInt(lid);
  	  
  	    String Title = request.getParameter("ln");
  	    
  	    String StartDate = request.getParameter("lp");  
  	     
        String StartTime = request.getParameter("lpa");
        
        String EndDate = request.getParameter("lpe");  
 	     
        String EndTime = request.getParameter("lpee");
  	    
        String Requir="";
        String req[]=request.getParameterValues("lpaa");
        for(int i=0;i<req.length;i++){
            Requir+=req[i]+" " + "-";
        }
  	    //String Requir = request.getParameter("lpaa");
        
        String sta = request.getParameter("Training status");
  	    
  	    Random random = new Random();
		int rid = random.nextInt();
		/* to convert negative into positive */
		if(rid < 0)
		{
			rid = rid * 1;
		}
		/*to convert 9 digit into 10 digit */
		if (rid < 1000000000) 
		{
			rid += 1000000000;
		}
		String id;
		id = "TAPSO-"+rid;
  	  
        Class.forName("com.mysql.jdbc.Driver");
 		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306", "root", "12345");
 		PreparedStatement ps = con.prepareStatement("insert into advancejava.trainingBooking values(?,?,?,?,?,?,?,?,?,?)");
 		
 		ps.setString(1, id);
 		ps.setString(2, EmpID);
 		ps.setString(3, Thalls);
 		ps.setString(4, Title);
 		ps.setString(5, StartDate);
 		ps.setString(6, StartTime);
 		ps.setString(7, EndDate);
 		ps.setString(8, EndTime);
 		ps.setString(9, Requir);
 		ps.setString(10, sta);
 		
 		int rec = ps.executeUpdate();
 		
 		if(rec>0)
 		{
	    	
	    	%>
	    	     <center>
	    	        <fieldset id="HallsBookingBack">
	    	           <h1><strong>Booked Details</strong></h1>
	    	         <table>
	    	                <tr>
	    	                    <td>
	    	                        <h3>Booking ID :</h3></td><td><h3><%=  id %></h3>
	    	                    </td>
	    	                </tr>
	    	                <tr>
	    	                    <td>
	    	                        <h3>IOCL Emp ID :</h3></td><td><h3> <%=  EmpID %></h3>
	    	                    </td>
	    	                </tr>
	    	                <tr>
	    	                    <td>
	    	                        <h3>Hall name :</h3></td><td><h3> <%=  Thalls %></h3>
	    	                    </td>
	    	                </tr>
	    	                <tr>
	    	                    <td>
	    	                        <h3>Title :</h3></td><td><h3> <%=  Title %></h3>
	    	                    </td>
	    	                </tr>
	    	                <tr>
	    	                    <td>
	    	                        <h3>Start Date :</h3></td><td><h3> <%=  StartDate %></h3>
	    	                    </td>
	    	                </tr>
	    	                <tr>
	    	                    <td>
	    	                        <h3>Start Time :</h3></td><td><h3> <%=  StartTime %></h3>
	    	                    </td>
	    	                </tr>
	    	                <tr>
	    	                    <td>
	    	                        <h3>End Date :</h3></td><td><h3> <%=  EndDate %></h3>
	    	                    </td>
	    	                </tr>
	    	                <tr>
	    	                    <td>
	    	                        <h3>End Time :</h3></td><td><h3><%=  EndTime %></h3>
	    	                    </td>
	    	                </tr>
	    	                <tr>
	    	                    <td>
	    	                        <h3>Requirements :</h3></td><td><h3> <%=  Requir %></h3>
	    	                    </td>
	    	                </tr>
	    	                <tr>
	    	                    <td>
	    	                        <h3>Status :</h3></td><td><h3> <%=  sta %></h3>
	    	                    </td>
	    	                </tr>
	    	         </table>
	    	                 <h1 style="width:45%;height:30px;font-size:27px; background-color : green;color: Aqua;">Request Submited Successfully to HR</h1>
	    	                 
	    	                 <a href="Home.jsp"><h2>Home</h2></a>
	    	      </fieldset> 
	    	     </center>
	    	<%
	    }
	    else
	    {
	    	%>
	    	    <center><lable>Invalid data</lable></center>
	    	<%
	    	RequestDispatcher rd = request.getRequestDispatcher("Halls Booking.jsp");
		    rd.include(request, response);
	    }
	    con.close();
   %>
</body>
</html>
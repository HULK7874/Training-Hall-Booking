<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Login</title>
       <link rel="stylesheet" href="Navbar.css"></link>
       <link rel="icon" href="favicon.ico"></link>
</head>
<body>
          <%
          String temp = request.getParameter("lid");
       	  int id = Integer.parseInt(temp);
       	
       	  String pass = request.getParameter("lp");
       	
   			Class.forName("com.mysql.jdbc.Driver");
   			Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306","root","12345");
   			PreparedStatement ps = cn.prepareStatement("select * from advancejava.trainingbookinglogin where ioclId = ? and password = ? ");
   			
   			ps.setInt(1, id);
   			ps.setString(2, pass);
   			
   			ResultSet rs = ps.executeQuery();
   		    
   			if(rs.next())
   			{	
   				RequestDispatcher rd = request.getRequestDispatcher("Home.jsp");
   				rd.forward(request, response);
   			}
   			else
   			{
   				String alertMessage = "Incorrect password! Please try again.";
                response.setContentType("text/html");
                response.getWriter().print("<script>alert('" + alertMessage + "'); window.location = 'Login.jsp';</script>");
         
   				//RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
   				//rd.include(request, response);
   			}
          %>
</body>
</html>
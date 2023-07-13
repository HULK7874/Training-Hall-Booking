<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
 <head>
  <title>Login to Training Hall Booking</title>
   <link rel="stylesheet" href="Navbar.css"></link>
  <link rel="icon" href="favicon.ico"></link>
 </head>
 <body id="Body">
                 <div style="width: 19%; height: 130px;;float: left;">
                       <img class="image2" src="https://iocl.com/assets/images/logo.gif" class="navbar-brand" style="display: inline;">
                 </div>
                 <div style="width: 81%;height: 130px;float: right;">
                       <marquee scrollamount="8"><h1 style="font-family: cursive;">Welcome to Training Hall Booking</h1></marquee>
                 </div>
      <center>
                     <hr></hr>
                     <br></br>
                     <br></br>
                     <br></br>
			<form action="LoginBack.jsp" method="post">
			      <table>
			                  <td></td>
				          <tr>
						      <td>IOCL Id : </td>
						      <td><input type="number" min="8" placeholder="Enter IOCL ID" name="lid" required></input></td>
						  </tr>
						      <td></td>
						  <tr><td></td></tr>
                          <tr>
						      <td>Password : </td>
						      <td><input type="password" placeholder="Enter Password" name="lp" required></input></td>
						  </tr>
				  </table>
				              <br></br>
				          <input type="submit" value="Login">
				          <input type="reset" value="Clear">
				          <br></br>
				          <a href="Welcome.jsp">Welcome Page</a>
			</form>
	 </center>  
</body>
</html>
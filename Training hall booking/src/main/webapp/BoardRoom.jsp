<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
      <title>Meeting Room 2</title>
             <link rel="stylesheet" href="Navbar.css"></link>
             <link rel="icon" href="favicon.ico"></link>
</head>
<body id="Meeting-Room-Body">
      <div style="width: 19%; height: 100px; background-color: skyblue;float: left;">
           <img class="image2" src="https://iocl.com/assets/images/logo.gif" class="navbar-brand" style="display: inline;">
      </div>
      <div style="width: 81%; height: 100px; background-color: skyblue;float: right;">
          <marquee><h1>Board Room</h1></marquee>
      </div>
      <div id="Meeting-Room-Div-A">
		  <img class="Meeting Room-video" src="Board room.jpg" style="width:100%; height:100%;"></img>
      </div>
      <div id="Meeting-Room-Div-B">
		  <center>
		          <table>
		                     <br></br>
		                     <br></br>
		                     <br></br>
		                     <br></br>
		                     <br></br>
		                     <br></br>
		                  <tr> <td><label class="meetlab">Capacity : </label></td> <td><label class="meetlab">20 persons</label></td> </tr>
		                  <tr> <td><label class="meetlab">Screen's : </label></td> <td><label class="meetlab">     1    </label></td> </tr>
		          </table>
		                  <a href="HallsBooking.jsp"><input type="button" value="Book Meeting Room" id= "Meeting-Room-input"></input></a>
		                      <br></br>
		                  <strong><a href="Home.jsp">Home</a></strong>
		   </center>
	  </div>
		
</body>
</html>
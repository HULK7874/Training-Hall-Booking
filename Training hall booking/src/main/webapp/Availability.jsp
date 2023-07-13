<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
 <head>
  <title>Login to Training Hall Booking</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/css/bootstrap-datepicker.min.css" rel="stylesheet"/>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="Navbar.css"></link>
    <link rel="icon" href="favicon.ico"></link>
 </head>
 <body id="Body">
                 <div style="width: 19%; height: 130px;;float: left;">
                       <img class="image2" src="https://iocl.com/assets/images/logo.gif" class="navbar-brand" style="display: inline;">
                 </div>
                 <div style="width: 81%; height: 130px;;float: right;">
                       <marquee scrollamount="8"><h1 style="font-family: cursive;">Training Hall Availability</h1></marquee>
                 </div>
      <center>
                     <hr></hr>
                     <br></br>
                     <br></br>
                     <br></br>
			<form action="AvailabilityBack.jsp" method="post" style="width: 400px;height:180px; box-shadow: 0px 0px 10px red; border-radius: 40px;">
			      <table>
				          <tr>
						  <td>Training Hall's : </td>
						  <td><select name="Training Halls" class="Training-Hall-Booking-page-input" style="margin: 10px;" required>
			                         <option>-Select-</option>
					                 <option>Training Hall 1</option>
					                 <option>Board Room</option>
		                             <option>Meeting Hall 1</option>
					                 <option>Meeting Hall-(IS)</option>
					                 <option>Meeting Hall-(Finance)</option>
			                   </select></td>
						  </tr>
                          <tr>
						  <td>Date : </td>
						  <td><input data-date-format="dd/mm/yyyy" id="datepicker" style="margin: 10px;" name="adate" class="Training-Hall-Booking-page-input" required></input></td>
						  </tr>				 
				  </table>
				          <br>
				          <input type="submit" value="Check" id="Training-Hall-Booking-page-input2"></input>
				          <input type="reset"  value="Clear" id="Training-Hall-Booking-page-input3"></input> 
				          <a href="Home.jsp"><input type="button" value="Home" style="width: 80px;height: 30px;border-radius: 50px;border-color: red;background-color: lime;color: red"></input></a>
				          <br></br>
				          <a href="Availability.jsp">Back</a>
			</form>
			</center>   
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/js/bootstrap-datepicker.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script type="text/javascript">
    $('#datepicker').datepicker({
        weekStart: 1,
        daysOfWeekHighlighted: "6,0",
        autoclose: true,
        todayHighlight: true,
    });
    $('#datepicker').datepicker("setDate", new Date());
</script>
 </body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
 <head>
  <title>Training Hall Booking</title>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/css/bootstrap-datepicker.min.css" rel="stylesheet"/>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  <link rel="stylesheet" href="Navbar.css"></link>
  <link rel="icon" href="favicon.ico"></link>
 </head>
 <body id="Body">
              <div style="width: 19%; height: 120px;;float: left;">
                       <img class="image2" src="https://iocl.com/assets/images/logo.gif" class="navbar-brand" style="display: inline;">
               </div>
               <div style="width: 81%; height: 120px;;float: right;">
                       <marquee scrollamount="8"><strong><h1 style="font-family: cursive;">Meeting Hall's Booking</h1></strong></marquee>
               </div>
       <center>
                     <hr></hr>
                     <br></br>
                     <br></br>
                     <br></br>
			<fieldset  id="Training-Hall-Booking-page-fieldset">
			<form action="HallsBookingBack.jsp" method="post" style="padding: 15px;">
			      <table>
			               <h1>Fill the Details</h1>
			              <tr>
						  <td>IOCL Employee ID : </td>
						  <td><input type="number" placeholder="Enter IOCL EMPLOOYEE ID" name="eid" style="margin: 10px;" class="Training-Hall-Booking-page-input" required></input></td>
						  </tr>
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
						  <td>Title : </td>
						  <td><input type="text" placeholder="Enter Title" name="ln" style="margin: 10px;" class="Training-Hall-Booking-page-input" required></input></td>
						  </tr>
						  <td> </td>
						   <tr>
						  <td>Start-Date : </td>
						  <td><input type="date" id="start-date" name="lp" style="margin: 10px;" name="lp" class="Training-Hall-Booking-page-input" required></td>
						  </tr>
						  <td></td>
						  <tr>
						  <td>Start-Time : </td>
						  <td><input type="time" placeholder="Select Start-Time" style="margin: 10px;" name="lpa" class="Training-Hall-Booking-page-input" required></input></td>
						  </tr>
						  <td></td>
						  <tr>
						  <td>End-Date : </td>
						  <td><input type="date" id="end-date" name="lpe" style="margin: 10px;" placeholder="Select End-Date" name="lpe" class="Training-Hall-Booking-page-input" required></td>
						  </tr>
						  <td></td>
						  <tr>
						  <td>End-Time : </td>
						  <td><input type="time" placeholder="Select End-Time" style="margin: 10px;" name="lpee" class="Training-Hall-Booking-page-input" required></input></td>
						  </tr>
						  <td></td>
						  <tr>
						  <td>Requirements :</td>
						  <td>
						      <table id="CheckTable">
	    	                         <tr>
	    	                             <td><input type="checkbox" name="lpaa" id="a" value="IT Assistance"><label for="a">IT Assistance</label></td>
	    	                             <td><textarea class="textbook" name="lpaa"></textarea></td>
	    	                         </tr>
	    	                         <tr>
	    	                             <td><input type="checkbox" name="lpaa" id="b" value="Stationary"><label for="b">Stationary</label></td>
	    	                             <td><textarea class="textbook" name="lpaa"></textarea></td>
	    	                         </tr>
	    	                         <tr>
	    	                             <td><input type="checkbox" name="lpaa" id="c" value="Canteen"><label for="c">Canteen</label></td>
	    	                             <td><textarea class="textbook" name="lpaa"></textarea></td>
	    	                         </tr>
	    	                    </table>
						  </td>
						  </tr>
						  <tr>
						  <td>Status : </td>
						  <td><select name="Training status" class="Training-Hall-Booking-page-input" style="margin: 10px;" required>
			                         <option>nill</option>
			                   </select></td>
						  </tr>
				  </table>
				          <br></br>
				          <input type="submit" value="Book" id="Training-Hall-Booking-page-input2"></input>
				          <input type="reset" value="Clear" id="Training-Hall-Booking-page-input3"></input>
				          <br></br>
				          <a href="Home.jsp"><input type="button" value="Home" id="Training-Hall-Booking-page-input2"></input></a>
			</form>
			</fieldset>
	   </center>
	   <script>
        // Get the current date
        var currentDate = new Date();
       
        // Add 10 days to the current date
        var maxDate = new Date();
        maxDate.setDate(currentDate.getDate() + 10);
       
        // Convert the dates to strings in the format "YYYY-MM-DD"
        var formattedCurrentDate = currentDate.toISOString().split('T')[0];
        var formattedMaxDate = maxDate.toISOString().split('T')[0];

        // Set the minimum and maximum dates for the start date input
        document.getElementById('start-date').setAttribute('min', formattedCurrentDate);
        document.getElementById('start-date').setAttribute('max', formattedMaxDate);

        // Set the minimum and maximum dates for the end date input
        document.getElementById('end-date').setAttribute('min', formattedCurrentDate);
        document.getElementById('end-date').setAttribute('max', formattedMaxDate);
    </script>
	  <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/js/bootstrap-datepicker.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        <script type="text/javascript">
    $('#datepicker1').datepicker({
        weekStart: 1,
        daysOfWeekHighlighted: "6,0",
        autoclose: true,
        todayHighlight: true,
    });
    $('#datepicker1').datepicker("setDate", new Date());
</script>
<input data-date-format="dd/mm/yyyy" id="datepicker1" style="margin: 10px;" placeholder="Select End-Date" name="lpe" class="Training-Hall-Booking-page-input" required></input>
<input data-date-format="dd/mm/yyyy" id="datepicker" style="margin: 10px;" name="lp" class="Training-Hall-Booking-page-input" required></input>
 --> 
 </body>
</html>

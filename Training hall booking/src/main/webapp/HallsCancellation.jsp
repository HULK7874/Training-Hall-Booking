<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Cancellation</title>
      <link rel="stylesheet" href="Navbar.css"></link>
      <link rel="icon" href="favicon.ico"></link> 
    <style type="text/css">
          td
            { padding-top: 3px; }
    </style>     
</head>
<body id="Body">
        <div style="width: 19%; height: 130px;;float: left;">
             <img class="image2" src="https://iocl.com/assets/images/logo.gif" class="navbar-brand" style="display: inline;">
        </div>
        <div style="width: 81%; height: 130px;;float: right;">
              <marquee scrollamount="8"><h1 style="font-family: cursive;">Cancellation</h1></marquee>
        </div>
                     
       <center>
                     <hr></hr>
                     <br></br><br></br><br></br>
           <form action="HallsCancellationBack.jsp" method="post" style="width: 400px;height:180px; box-shadow: 0px 0px 10px red;border-radius: 50px;">
                 <table>
                        <tr>
                            <td>
                                <label for="checkInDate">Booking ID :</label>
                            </td>
                            <td>
                                <input type="text" style="margin: 10px;" name="bide" class="Training-Hall-Booking-page-input" placeholder="Enter Booking ID" required></input>
                            </td>
                        </tr>
                </table>
                         <br>
                         <input type="submit" value="Cancle" style="background-color: lime; border-radius: 20px;"></input>
                         <input type="reset" value="Clear" style="background-color: yellow;border-radius: 20px;"></input> 
                         <br></br>
                         <a href="Home.jsp">Home</a>
           </form>
       </center>
</body>
</html>
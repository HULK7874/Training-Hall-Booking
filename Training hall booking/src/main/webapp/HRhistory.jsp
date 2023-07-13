<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>HR Historys</title>
    <link rel="stylesheet" href="Navbar.css" />
    <link rel="icon" href="favicon.ico" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0"></script>
    <style type="text/css">
        .slide 
        {
            display: none;
        }
        table 
        {
            width: 100%;
            border-collapse: collapse;
            background-color: transparent;
        }
        th, td 
        {
            height: 50px;
            border: 3px solid black;
            background-color: transparent;
        }
        .pagination 
        {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 10px;
        }
        .pagination a {
            padding: 5px 10px;
            margin: 0 5px;
            text-decoration: none;
            color: black;
            border: 1px solid gray;
            border-radius: 3px;
        }
        .pagination .active 
        {
            background-color: gray;
            color: white;
        }
    </style>
    <script>
        $(document).ready(function() {
            var slideIndex = 0;
            showSlides(slideIndex);
            
            function showSlides(index) {
                var slides = $('.slide');
                var pagination = $('.pagination a');
                
                if (index >= slides.length) {
                    slideIndex = 0;
                }
                if (index < 0) {
                    slideIndex = slides.length - 1;
                }
                
                slides.hide();
                slides.eq(slideIndex).show();
                pagination.removeClass('active');
                pagination.eq(slideIndex).addClass('active');
            }
            
            $('.pagination a').click(function(e) {
                e.preventDefault();
                slideIndex = $(this).index();
                showSlides(slideIndex);
            });
        });
    </script>
</head>
<body style="background-color: silver;">
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div id="navdiv1" class="container-fluid">
            <img class="image2" src="https://iocl.com/assets/images/logo.gif" class="navbar-brand" />
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
            <div id="navdiv" class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item"><a class="nav-link active" aria-current="page" href="HRHome.jsp">HR Home</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <%
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306", "root", "12345");
            ps = con.prepareStatement("SELECT * from advancejava.trainingBooking");
            rs = ps.executeQuery();
            
            List<String[]> records = new ArrayList<>();
            
            while (rs.next()) {
                String[] record = new String[10];
                record[0] = rs.getString(1);
                record[1] = rs.getString(2);
                record[2] = rs.getString(3);
                record[3] = rs.getString(4);
                record[4] = rs.getString(5);
                record[5] = rs.getString(6);
                record[6] = rs.getString(7);
                record[7] = rs.getString(8);
                record[8] = rs.getString(9);
                record[9] = rs.getString(10);
                
                records.add(record);
            }
            
            int recordsPerPage = 14;
            int pageCount = (int) Math.ceil((double) records.size() / recordsPerPage);
            
            for (int i = 0; i < records.size(); i += recordsPerPage) {
                List<String[]> slideRecords = records.subList(i, Math.min(i + recordsPerPage, records.size()));
    %>

    <div class="slide">
        <table>
            <tr>
                <th> Booking ID   </th>
                <th> Employee ID  </th>
                <th> Training Hall</th>
                <th> Title        </th>
                <th> Start date   </th>
                <th> Start Time   </th>
                <th> End Date     </th>
                <th> End Time     </th>
                <th> Requirements </th>
                <th> Status       </th>
            </tr>
            <%
                for (String[] record : slideRecords) {
            %>
            <tr>
                <td><%= record[0] %></td>
                <td><%= record[1] %></td>
                <td><%= record[2] %></td>
                <td><%= record[3] %></td>
                <td><%= record[4] %></td>
                <td><%= record[5] %></td>
                <td><%= record[6] %></td>
                <td><%= record[7] %></td>
                <td><%= record[8] %></td>
                <td><%= record[9] %></td>
            </tr>
            <%
                }
            %>
        </table>
    </div>
    <%
            }
    %>
    <div class="pagination">
        <%
            for (int i = 0; i < pageCount; i++) {
        %>
        <a href="#" <%= i == 0 ? "class='active'" : "" %>><%= i + 1 %></a>
        <%
            }
        %>
    </div>
    <%
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (ps != null) {
                    ps.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    %>
</body>
</html>
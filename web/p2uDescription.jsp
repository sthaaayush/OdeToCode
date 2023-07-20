<%-- 
    Document   : Udescription
    Created on : Jul 20, 2023, 8:24:25 AM
    Author     : Neuu
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Business Details - Greenhouse Business 1</title>
        <%@include file="component/allCss.jsp" %>
        <style>
            body{
                background-image: url("cdbImage.jpg");
                background-size: cover;
                font-family: monospace;
            }
        </style>
    </head>
    <body>
        <%@include file="component/navBar.jsp" %>
        <div class="container mt-5">
            <!-- Business Details -->
            <%
                String id = request.getParameter("id");
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/logdetails", "root", "");
                    String sql = "Select * From owner where id=" + id + ";";
                    PreparedStatement stm = con.prepareStatement(sql);
                    ResultSet rs = stm.executeQuery();
                    rs.next();
            %>
            <div class="card">
                <div class="card-header">
                    <h3>
                        <% out.write(rs.getString("companyName")); %>
                    </h3> 
                </div>
                <div class="card-body">
                    <h5><% out.write(rs.getString("street") + "," + rs.getString("city")); %></h5>
                    <h5>Specialized Products: XYZ</h5>
                    <b>Description: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque mollis, quam eu efficitur tincidunt, quam augue volutpat nulla,
                        vel commodo velit eros id quam. Fusce tempus nulla vitae ipsum tristique posuere.</b><br><br>
                    <b>Phone Number:<% out.write(rs.getString("phoneNumber")); %></b><br><br>
                    <b>Email:<% out.write(rs.getString("email")); %></b>
                    <hr>
                    <h4>Past Reviews:</h4>
                    <div class="list-group">
                        <!-- Sample past reviews -->
                        <div class="list-group-item">
                            <div class="d-flex w-100 justify-content-between">
                                <h5 class="mb-1">Customer 1</h5>
                                <small>Rating: 4.5/5</small>
                            </div>
                            <p class="mb-1">Review: Great greenhouse! The products are fresh and delicious.</p>
                        </div>
                        <div class="list-group-item">
                            <div class="d-flex w-100 justify-content-between">
                                <h5 class="mb-1">Customer 2</h5>
                                <small>Rating: 5/5</small>
                            </div>
                            <p class="mb-1">Review: Excellent service and quality. Highly recommended.</p>
                        </div>
                        <!-- Add more past reviews here -->
                    </div>
                </div>
            </div>
            <%
                } catch (Exception e) {
                    out.write("Exception caught: " + e.getMessage());
                }
            %>
        </div>
    </body>
</html>

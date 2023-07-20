
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Dashboard</title>
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
            <!-- Greenhouse Business Directory -->
            <div class="card">
                <div class="card-header d-flex justify-content-between align-items-center">
                    <h3>Greenhouse Business Directory</h3> 

                </div>
                <div class="card-body">
                    <p>Users can access a comprehensive directory of greenhouse businesses in their area.</p>
                    <p>The directory provides information about greenhouse location, specialized products, and customer reviews.</p>
                    <!-- Sample directory list -->
                    <div class="list-group">
                        <%
                            try {
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/logdetails", "root", "");
                                String sql = "Select * From owner;";
                                PreparedStatement stm = con.prepareStatement(sql);
                                ResultSet rs = stm.executeQuery();
                                while (rs.next()) {
                        %>
                        <a class="list-group-item list-group-item-action" href="p2uDescription.jsp?id=<%out.write(rs.getString("id"));%>" >
                            <div class="d-flex w-100 justify-content-between">
                                <h5 class="mb-1"><% out.write(rs.getString("companyName")); %></h5>
                                <small>Specialized Products: XYZ</small>
                            </div>
                            <p class="mb-1">Location: <% out.write(rs.getString("street") + "," + rs.getString("city")); %></p>
                        </a>
                        <%
                                }
                                con.close();
                            } catch (Exception e) {
                                out.write("Exception caught: " + e.getMessage());
                            }
                        %>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
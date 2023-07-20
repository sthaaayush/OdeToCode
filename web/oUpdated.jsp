<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Update Owner Data</title>
</head>
<body>
    <h1>Update Owner Data</h1>

    <%-- Retrieve the form data submitted --%>
    <% String fname = request.getParameter("fname");
       String lname = request.getParameter("lname");
       String phoneNumber = request.getParameter("phoneNumber");
       String email = request.getParameter("email");
       String companyName = request.getParameter("companyName");
       String street = request.getParameter("street");
       String city = request.getParameter("city");
       String state = request.getParameter("state");
       String pan = request.getParameter("pan");

       int ownerId = Integer.parseInt(request.getParameter("id"));

       try {
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost/logdetails", "root", "");
           String sql = "UPDATE owner SET fname=?, lname=?, phoneNumber=?, email=?, companyName=?, street=?, city=?, state=?, pan=? WHERE id=?";
           PreparedStatement pst = con.prepareStatement(sql);
           
           pst.setString(1, fname);
           pst.setString(2, lname);
           pst.setString(3, phoneNumber);
           pst.setString(4, email);
           pst.setString(5, companyName);
           pst.setString(6, street);
           pst.setString(7, city);
           pst.setString(8, state);
           pst.setString(9, pan);
           pst.setInt(10, ownerId);

           int rowsUpdated = pst.executeUpdate();

           if (rowsUpdated > 0) {
               out.print("Owner data updated successfully!");
           } else {
               out.print("Failed to update owner data!");
           }

           con.close();
       } catch (SQLException | ClassNotFoundException ex) {
           out.print(ex.getMessage());
       }
    %>

    <br><br>
    <a href="adminDashboard.jsp">Go Back to Update Page</a>
</body>
</html>

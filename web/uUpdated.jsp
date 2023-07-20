<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Update User Data</title>
</head>
<body>
    <h1>Update User Data</h1>

    <%-- Retrieve the form data submitted --%>
    <% String cFname = request.getParameter("cFname");
       String cLname = request.getParameter("cLname");
       String cPhoneNumber = request.getParameter("cPhoneNumber");
       String cEmail = request.getParameter("cEmail");
       String cCity = request.getParameter("cCity");
       String cState = request.getParameter("cState");

       int customerId = Integer.parseInt(request.getParameter("customerId"));

       try {
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost/logdetails", "root", "");
           String sql = "UPDATE customer SET cFname=?, cLname=?, cPhoneNumber=?, cEmail=?, cCity=?, cState=? WHERE customerId=?";
           PreparedStatement pst = con.prepareStatement(sql);
           
           pst.setString(1, cFname);
           pst.setString(2, cLname);
           pst.setString(3, cPhoneNumber);
           pst.setString(4, cEmail);
           pst.setString(5, cCity);
           pst.setString(6, cState);
           pst.setInt(7, customerId);

           int rowsUpdated = pst.executeUpdate();

           if (rowsUpdated > 0) {
               out.print("User data updated successfully!");
           } else {
               out.print("Failed to update user data!");
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

<%-- 
    Document   : update
    Created on : Jul 18, 2023, 8:50:56 AM
    Author     : Neuu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Update</title>
    </head>
    <body>
        <h1>update Data</h1>
        <% String idParameter = request.getParameter("id");
      int userId = Integer.parseInt(idParameter); 
        out.print(userId);
         
        try {
                          Class.forName("com.mysql.jdbc.Driver");
                          Connection con = DriverManager.getConnection("jdbc:mysql://localhost/logdetails", "root", "");
                          String sql = "SELECT * FROM customer WHERE customerId=" +userId;
                          PreparedStatement pst = con.prepareStatement(sql);
                          ResultSet rs = pst.executeQuery();

            
                          while (rs.next()) {
                           int customerId = rs.getInt("customerId");
                           String cFname = rs.getString("cFname");
                           String cLname = rs.getString("cLname");
                           String cPhoneNumber = rs.getString("cPhoneNumber");
                           String cEmail = rs.getString("cEmail");
                           String cCity = rs.getString("cCity");
                           String cState = rs.getString("cState");
                          
               
                
                          
                          
        %>

       <form action="uUpdated.jsp">
            <input type="hidden" name="customerId" value="<%= customerId %>">
            First Name: <input type="text" name="cFname" value= "<% out.print(cFname);  %>" ><br>
            Last Name: <input type="text" name="cLname" value= "<% out.print(cLname); %>"><br>
            Phone Number: <input type="text" name="cPhoneNumber" value= "<% out.print(cPhoneNumber); %>"><br>
            Email: <input type="text" name="cEmail" value= "<% out.print(cEmail); %>"><br>
        
            City: <input type="text" name="cCity" value= "<% out.print(cCity); %>"><br>
            State: <input type="text" name="cState" value= "<% out.print(cState); %>"><br>
            <br><br>
            <input type="submit">


        </form>
        <%
            }
        con.close();
    } catch (SQLException ex) {
        out.print(ex.getMessage());
    }
                    

        %>



    </body>
</html>

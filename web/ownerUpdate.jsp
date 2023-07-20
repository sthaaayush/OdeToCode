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
        <title>owner Update </title>
    </head>
    <body>
        <h1>update Data</h1>
        <% String idParameter = request.getParameter("id");
      int ownerId = Integer.parseInt(idParameter); 
        out.print(ownerId);
         
        try {
                          Class.forName("com.mysql.jdbc.Driver");
                          Connection con = DriverManager.getConnection("jdbc:mysql://localhost/logdetails", "root", "");
                          String sql = "SELECT * FROM owner WHERE id="+ownerId;
                          PreparedStatement pst = con.prepareStatement(sql);
                          ResultSet rs = pst.executeQuery();

            
                          while (rs.next()) {
                              int id = rs.getInt("id");
                              String fname = rs.getString("fname");
                              String lname = rs.getString("lname");
                              String phoneNumber = rs.getString("phoneNumber");
                              String email = rs.getString("email");
                               String companyName = rs.getString("companyName");
                              String street = rs.getString("street");
                              String city = rs.getString("city");
                              String state = rs.getString("state");
                               String pan = rs.getString("pan");
               
                
                          
                          
        %>

        <form action="oUpdated.jsp">
            <input type="hidden" name="id" value="<%= ownerId %>">
            First Name: <input type="text" name="fname" value= "<% out.print(fname);  %>" ><br>
            Last Name: <input type="text" name="lname" value= "<% out.print(lname); %>"><br>
            Phone Number: <input type="text" name="phoneNumber" value= "<% out.print(phoneNumber); %>"><br>
            Email: <input type="text" name="email" value= "<% out.print(email); %>"><br>
            Company Name: <input type="text" name="companyName" value= "<% out.print(companyName);  %>" ><br>
            Street: <input type="text" name="street" value= "<% out.print(street); %>"><br>
            City: <input type="text" name="city" value= "<% out.print(city); %>"><br>
            State: <input type="text" name="state" value= "<% out.print(state); %>"><br>
            Pan: <input type="text" name="pan" value= "<% out.print(pan); %>"><br>
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

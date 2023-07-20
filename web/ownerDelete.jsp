<%-- 
    Document   : ownerDelete
    Created on : Jul 20, 2023, 7:15:25 PM
    Author     : Neuu
--%>
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
        
        <% String idParameter = request.getParameter("id");
      int ownerId = Integer.parseInt(idParameter); 
       
         
        try {
                          Class.forName("com.mysql.jdbc.Driver");
                          Connection con = DriverManager.getConnection("jdbc:mysql://localhost/logdetails", "root", "");
                          String sql = "DELETE FROM owner WHERE id="+ownerId;
                          PreparedStatement pst = con.prepareStatement(sql);
                          pst.execute();
                             con.close();
    <h1>Deleted</h1>
            
       
    } catch (SQLException ex) {
        out.print(ex.getMessage());
    }
                    

        %>



    </body>
</html>

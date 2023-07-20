<%-- 
    Document   : adminDashboard
    Created on : Jul 20, 2023, 7:03:04 PM
    Author     : Neuu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>

<html>
    <head>
        <title>Admin Dashboard</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div class="header">
            <h1> Owner Dashboard</h1>

        </div>

        <div class="bodyy">
            <h1>List of Owners </h1>

            <table border="2">
                <%out.print("niwesh");%>
                <tr> 

                    <th> First Name</th>

                    <th> Middle Name</th>

                    <th> Last Name</th>

                    <th> Email</th>
                    <th> companyName</th>

                    <th> street</th>

                    <th>  city</th>

                    <th>  state</th>
                    <th>   pan </th>

                    <th> Update</th>

                    <th> Delete</th>

                </tr>
                <%
                     try {
                            Class.forName("com.mysql.jdbc.Driver");
                           Connection con = DriverManager.getConnection("jdbc:mysql://localhost/logdetails", "root", "");
                           String sql = "SELECT id, fname, lname, phoneNumber, email, companyName, street,city, state, pan FROM owner";
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
              

                               out.print("<tr>" 

                                   +"<td>"+ fname +"</td>"

                                   +"<td>"+ lname +"</td>"
                    
                                   +"<td>"+ phoneNumber +"</td>"
                    
                                   +"<td>"+ email +"</td>"
                                   +"<td>"+ companyName +"</td>"

                                   +"<td>"+ street +"</td>"
                    
                                   +"<td>"+ city +"</td>"
                    
                                   +"<td>"+ state +"</td>"
                                   
                                   +"<td>"+ pan +"</td>"
                                   
                                   +"<td> <a href=\"ownerUpdate.jsp?id=" + id +"\"> update </a> </td>"
                                   
                                   +"<td> <a href=\"ownerDelete.jsp?id=" + id +"\"> delete </a> </td>"


                               +"</tr>");
                
                           }

                           con.close();
                       } catch (SQLException ex) {
                           out.print(ex.getMessage());
                       }
                    
                %>



            </table> 
        </div>

        <h1>List of Users </h1>

        <table border="2">

            <tr> 

                <th> customerId</th>

                <th> cFname</th>

                <th> cLname</th>

                <th> cPhoneNumber</th>
                <th> cEmail</th>

                <th> cCity</th>

                <th>  cState</th>

              

                <th> Update</th>

                <th> Delete</th>

            </tr>
            <%
                 try {
                        Class.forName("com.mysql.jdbc.Driver");
                       Connection con = DriverManager.getConnection("jdbc:mysql://localhost/logdetails", "root", "");
                       String sql = "SELECT * FROM customer";
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
                          
              

                           out.print("<tr>" 

                               +"<td>"+ customerId +"</td>"

                               +"<td>"+ cFname +"</td>"
                    
                               +"<td>"+ cLname +"</td>"
                    
                               +"<td>"+ cPhoneNumber +"</td>"
                               +"<td>"+ cEmail +"</td>"

                               +"<td>"+ cCity +"</td>"
                    
                               +"<td>"+ cState +"</td>"
                    
                                   
                               +"<td> <a href=\"userUpdate.jsp?id=" + customerId +"\"> update </a> </td>"
                                   
                               +"<td> <a href=\"userDelete.jsp?id=" + customerId +"\"> delete </a> </td>"


                           +"</tr>");
                
                       }

                       con.close();
                   } catch (SQLException ex) {
                       out.print(ex.getMessage());
                   }
                    
            %>



        </table> 
    </div>

</body>
</html>

<%-- 
    Document   : ownerRegisterPage
    Created on : Jul 19, 2023, 11:19:10 PM
    Author     : Neuu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Owner-Register</title>
        <%@include file="component/allCss.jsp"%>

        <style>
            body, html {
                height: 100%;
            }

            .container {
                width: 800px;
                height: 100%;
                display: flex;
                justify-content: center;
                align-items: center;
            }

            .card {
                border-radius: 10px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            }

            .card-header {
                background-color: #007BFF;
                color: #fff;
                border-radius: 10px 10px 0 0;
            }

            .card-body {
                padding: 20px;
            }

            .btn-primary {
                background-color: #007BFF;
                border-color: #007BFF;
            }

            .btn-primary:hover {
                background-color: #0056b3;
                border-color: #0056b3;
            }
            
            .errorMsg{
                display: flex;
                justify-content: center;
                font-size: 20px;
                color: red;
                font-family: monospace;
            }
        </style>
    </head>
    <body>
        <%@include file="component/navBar.jsp" %>
        <br> 
        <br>
        <br>
        <br>
        <br>
        <div class="container">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">
                        <h2 class="mb-0">Owner Registration</h2>
                    </div>
                    <div class="card-body">
                        <form action="ownerRegMap" method="post">
                            <fieldset>
                                <legend><h2>Personal Detail</h2></legend>
                                <div class="form-row">
                                    <div class="form-group">
                                        <label for="firstName">First Name:</label>
                                        <input type="text" class="form-control" id="fname" name="fname" required>
                                    </div>
                                    <div class="form-group ">
                                        <label for="lastName">Last Name:</label>
                                        <input type="text" class="form-control" id="lname" name="lname" required>
                                    </div>
                                </div>
                                <div class="form-group  ">
                                    <label for="phoneNumber">Phone Number:</label>
                                    <input type="tel" class="form-control" id="phoneNumber" name="phoneNumber" required>
                                </div>
                                <div class="form-group ">
                                    <label for="email">Email:</label>
                                    <input type="email" class="form-control" id="email" name="email" required>
                                </div>

                            </fieldset>

                            <br>

                            <fieldset>
                                <legend><h2>Company Detail</h2></legend>
                                <div class="form-group ">
                                    <label for="companyName">Company Name:</label>
                                    <input type="text" class="form-control" id="companyName" name="companyName" required>
                                </div>
                                <div class="form-group ">
                                    <label for="street">Street:</label>
                                    <input type="text" class="form-control" id="street" name="street" required>
                                </div>
                                <div class="form-row">
                                    <div class="form-group">
                                        <label for="city">City:</label>
                                        <input type="text" class="form-control" id="city" name="city" required>
                                    </div>
                                    <div class="form-group ">
                                        <label for="state">State:</label>
                                        <input type="text" class="form-control" id="state" name="state" required>
                                    </div>
                                    <div class="form-group ">
                                        <label for="panNumber">Pan Number:</label>
                                        <input type="text" class="form-control" id="pan" name="pan" required>
                                    </div>
                                </div>

                            </fieldset>
                            <div class="form-group ">

                                <label for="password">Password:</label>
                                <input type="password" class="form-control" id="pass" name="pass" required>
                            </div>
                            <div class="form-group ">

                                <label for="password">Confirm Password:</label>
                                <input type="password" class="form-control" id="confirmPass" name="confirmOPass" required>
                            </div>
                            <div class="errorMsg">
                                <%
                                    if (request.getMethod().equalsIgnoreCase("post")) {
                                        out.write((String) request.getAttribute("errorMessage"));
                                    }
                                %>
                            </div><br>
                            <button type="submit" class="btn btn-primary btn-block">Register</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
<html>
    <head>
        <title>First Opening Page</title>
        <link rel="stylesheet" href="first.css">
    </head>

    <body>
        <div id="nav">
            <img src="logo.png" title="logo" alt="image not available"/>
            <a href="home.html"><h4>HOME</h4></a>
            <a href="home.html"><h4>SERVICES</h4></a>
            <a href="home.html"><h4>CONTACT</h4></a>
            <a href="accesslog.html"><h4>LOGIN</h4></a>
            <a href="accessRegister.html"><h4>SIGN UP</h4></a>
        </div>

        <video autoplay loop muted src="video_bg.mp4" ></video>

        <section class="login-RC">
            <div class="login-box-RC">
                <div class="left">
                    <div class="return">
                        <a href="first.html">RETURN HOME</a>
                    </div>

                    <div class="credentials">
                        <form method="post" action="customerRegMap">
                            <h3>REGISTER HERE</h3>

                            <label class="label" for="cFname">First Name:</label>
                            <input type="text" class="form-control" id="cFname" name="cFname" required> 


                            <label class="label" for="cLname">Last Name:</label>
                            <input type="text" class="form-control" id="cLname" name="cLname" required> 
                            <br><br>

                            <label class="label" for="cPhoneNumber">Phone No.:</label>
                            <input type="text" class="form-control" id="cPhoneNumber" name="cPhoneNumber" required> 


                            <label class="label" for="cEmail">Email:</label>
                            <input type="email" class="form-control" id="cEmail" name="cEmail" required> 
                            <br><br> 

                            <label class="label" for="cState">State:</label>
                            <input type="text" class="form-control" id="cState" name="cState" required> 


                            <label class="label" for="cCity">City:</label>
                            <input type="text" class="form-control" id="cCity" name="cCity" required> 
                            <br><br>

                            <label class="label" for="cPass">Password:</label>
                            <input type="password" class="form-control" id="cPass" name="cPass" required>


                            <label class="label" for="ConfirmPass">Confirm Password:</label>
                            <input type="text" class="form-control" id="ConfirmPass" name="ConfirmPass" required> 
                            <br><br>
                            <div class="errorMsg">
                                <%
                                    if (request.getMethod().equalsIgnoreCase("post")) {
                                        out.write((String) request.getAttribute("errorMessage"));
                                    }
                                %>
                            </div>

                            <button type="submit" class="submit">Submit</button>

                        </form>
                    </div>
                </div>
                <div class="right">
                    <img src="logo.png" title="logo" alt="image not available"/> 
                </div>
            </div>
        </section>
    </body>       
</html>          
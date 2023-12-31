<html>
    <head>
        <title>Customer-Login</title>
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

        <video id="blur-video" autoplay loop muted src="video_bg.mp4" ></video>

        <section class="login">
            <div class="login-box">
                <div class="left">
                    <div class="return">
                        <a href="home.html">RETURN HOME</a>
                    </div>

                    <div class="credentials">
                        <form method="post" action="customerLogMap">
                            <h3>CUSTOMER LOGIN</h3>

                            <label class="label" for="cMail">Email:</label>
                            <input type="email" class="form-control" id="cMail" name="cEmail" required> 
                            <br><br> 

                            <label class="label" for="cPass">Password:</label>
                            <input type="password" class="form-control" id="cPass" name="cPass" required>
                            <br><br>
                            <div >
                                <label class="errorMsg">
                                    <%
                                        if (request.getMethod().equalsIgnoreCase("post")) {
                                            out.write("*" + (String) request.getAttribute("errorMessage") + "*");
                                        }
                                    %>
                                </label>
                            </div>
                            <br> <br>             
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





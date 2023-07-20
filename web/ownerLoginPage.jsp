<html>
    <head>
        <title>Owner-Login</title>
        <link rel="stylesheet" href="first.css">
    </head>

    <body>
        <div id="nav">
            <img src="logo.png" title="logo" alt="image not available"/>
            <img src="logo.png" title="logo" alt="image not available"/>
            <a href="home.html"><h4>HOME</h4></a>
            <a href="home.html"><h4>SERVICES</h4></a>
            <a href="home.html"><h4>CONTACT</h4></a>
            <a href="home.html"><h4>LOGOUT</h4></a>
        </div>

        <video autoplay loop muted src="video_bg.mp4" ></video>

        <section class="login">
            <div class="login-box">
                <div class="left">
                    <div class="return">
                        <a href="home.html">RETURN HOME</a>
                    </div>

                    <div class="credentials">
                        <form method="post" action="ownerLogMap">
                            <h3>OWNER LOGIN</h3>

                            <label class="label" for="mail">Email:</label>
                            <input type="email" class="form-control" id="mail" name="mail" required> 
                            <br><br> 

                            <label class="label" for="pass">Password:</label>
                            <input type="password" class="form-control" id="pass" name="pass" required>
                            <br><br>
                            <div class="errorMsg">
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



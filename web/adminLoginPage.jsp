<html>
    <head>
        <title>Admin-Login</title>
        <link rel="stylesheet" href="first.css">
    </head>

    <body>
        <div id="nav">
            <img src="logo.png" title="logo" alt="image not available"/>
            <h4>HOME</h4>
            <h4>SERVICES</h4>
            <h4>CONTACT</h4>
            <h4>LOGIN</h4>
            <h4>SIGN UP</h4>
        </div>

        <video autoplay loop muted src="video_bg.mp4" ></video>

        <section class="login">
            <div class="login-box">
                <div class="left">
                    <div class="return">
                        <a href="home.html">RETURN HOME</a>
                    </div>

                    <div class="credentials">
                        <form method="post" action="adminLogMap">
                            <h3>ADMIN LOGIN</h3>

                            <label class="label" for="eEmail">Email:</label>
                            <input type="email" class="form-control" id="eEmail" name="eEmail" required> 
                            <br><br> 

                            <label class="label" for="ePass">Password:</label>
                            <input type="password" class="form-control" id="ePass" name="ePass" required>
                            <br><br>
                            <div >
                                <label class="errorMsg">
                                    <%
                                        if (request.getMethod().equalsIgnoreCase("post")) {
                                            out.write("*"+(String) request.getAttribute("errorMessage")+"*");
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



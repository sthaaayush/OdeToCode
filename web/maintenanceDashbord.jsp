<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Maintenance</title>
        <link rel="stylesheet" href="first.css">
        <style>
            .btn{
                width: 60px;
                height: 30px;
                border-radius: 25%;
                background: center;
            }
        </style>
    </head>
    <body>
        <div id="nav">
            <img src="logo.png" title="logo" alt="image not available"/>
            <a href="home.html"><h4>HOME</h4></a>
            <a href="home.html"><h4>SERVICES</h4></a>
            <a href="home.html"><h4>CONTACT</h4></a>
            <a href="home.html"><h4>LOGOUT</h4></a>
        </div>
        <video autoplay loop muted src="video_bg.mp4" > </video>
    <center>
        <div class="contain">
            <form action="maintainS">
                Product:<input type="text" name="productName"><br><br>
                Problem:<input type="text" name="productissue"><br><br>
                Date:<input type="date" name="date"><br><br>
                Location: <input type="text" name="place"><br><br>
                <input type="submit" value="Submit" class="btn">
            </form>
        </div>
    </center>
</body>
</html>

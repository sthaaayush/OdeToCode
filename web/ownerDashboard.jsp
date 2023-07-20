
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Owner Dashboard</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 0;
            }

            .card {
                margin: auto;
                background-color: #f9f9f9;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                border-radius: 8px;
                padding: 30px; /* Increased padding for more space */
                width: 500px; /* Increased width for a bigger card */
            }

            .header {
                font-size: 28px;
                font-weight: bold;
                margin-bottom: 20px; /* Increased margin for better separation */
            }

            .info-label {
                font-weight: bold;
                margin-top: 15px; /* Increased margin for better separation */
            }

            .info-label, input, textarea {
                width: 100%;
                margin-bottom: 15px; /* Increased margin for better separation */
            }

            button.edit-btn {
                background-color: #4CAF50;
                color: white;
                padding: 12px 24px; /* Increased padding for a larger button */
                border: none;
                border-radius: 4px;
                cursor: pointer;
                font-size: 18px; /* Increased font size for the button */
                margin-top: 25px; /* Increased margin for better separation */
            }

            button.edit-btn:hover {
                background-color: #45a049;
            }
            #nav img{
                height: 7vw;
            }

            #nav h4{
                text-transform: uppercase;
                font-weight: 500;
                cursor: pointer;
                font-size: 1.15vw;
            }
            #nav{
                height: 20%;
                width: 100%;
                display: flex;
                align-items: center;
                padding: 0 120px;
                gap: 50px;
                position: absolute;
                z-index: 999;
                justify-content: flex-start;
            }
            #myVideo {
                position: fixed;
                right: 0;
                bottom: 0;
                min-width: 100%;
                min-height: 100%;
            }
            .card {
                position: fixed;
                bottom: 0;
                background: rgba(0, 0, 0, 0.5);
                color: #f1f1f1;
                width: 40%;
                padding: 20px;
                margin-left: 30em;
            }
            input{
                height: 30px;
            }
        </style>
    </head>
    <body>
        <video autoplay muted loop id="myVideo">
            <source src="video_bg.mp4" type="video/mp4">
        </video>
        <div id="nav">
            <img src="logo.png" title="logo" alt="image not available"/>
            <a href="home.html"><h4>HOME</h4></a>
            <a href="home.html"><h4>SERVICES</h4></a>
            <a href="home.html"><h4>CONTACT</h4></a>
            <a href="home.html"><h4>LOGOUT</h4></a>
        </div>
        <br>
        <div class="card">
            <form action="saveEditedData.jsp" method="post">
                <div class="header">Advertise Your Product</div>
                <div class="info-label">Product Name:</div>
                <input type="text" name="productName" >
                <div class="info-label">Product Description:</div>
                <textarea name="description" rows="4"></textarea>
                <div class="info-label">Promotions:</div>
                <input type="text" name="promotions" placeholder="Promotion(optional)">

                <button type="submit" class="edit-btn">Save</button>
            </form>
        </div>
    </body>
</html>
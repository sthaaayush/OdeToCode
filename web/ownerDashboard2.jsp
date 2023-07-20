
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Owner Dashboard</title>
        <style>

            body {
                font-family: Arial, sans-serif;
                /*            margin: 20px;*/
            }

            .container {
                max-width: 600px;
                margin: auto;
                border: 1px solid #ccc;
                padding: 20px;
            }

            .header {
                text-align: center;
                font-size: 24px;
                margin-bottom: 20px;
            }

            .info-label {
                font-weight: bold;
            }

            .edit-btn {
                background-color: #4CAF50;
                color: white;
                border: none;
                padding: 8px 16px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                margin-top: 10px;
                cursor: pointer;
            }

            .edit-btn:hover {
                background-color: #45a049;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="header">Owner Dashboard</div><br>
            <div class="info-label">Personal Information:</div>
            <br>
            <div>Name: John Doe</div>
            <div>Email: john.doe@example.com</div>
            <div>Phone: +1 (123) 456-7890</div>
            <br>
            <div class="info-label">Product Description:</div><br>
            <div>Product Name: Greenhouse Product 1</div>
            <div>Description: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque mollis, quam eu efficitur tincidunt, quam augue volutpat nulla, vel commodo velit eros id quam. Fusce tempus nulla vitae ipsum tristique posuere.</div>
            <br>
            <div class="info-label">Promotions:</div><br>
            <div>Currently running promotions: Buy 1 Get 1 Free</div>
            <br>
            <div class="info-label">User Responses:</div><br>
            <div>Customer 1: Great product! I loved it!</div>
            <div>Customer 2: Fast delivery and excellent quality.</div>
            <br>
            <div class="info-label">User Ratings:</div><br>
            <div>Overall Rating: 4.5/5</div>
            <br>
            <a href="p2editOwnerDashboard.jsp" class="edit-btn">Edit</a>
        </div>
    </body>
</html>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Edit Owner Dashboard</title>
      <%@include file="component/allCss.jsp"%>
    <style>
        body {
            font-family: Arial, sans-serif;
          
            height: 100vh;
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
    </style>
</head>
<body>
    
     <%@include file="component/navBar.jsp" %>
     <br>
    <div class="card">
        <form action="saveEditedData.jsp" method="post">
            <div class="header">Edit Owner Dashboard</div>
            <div class="info-label">Personal Information:</div>
            <input type="text" name="name" value="John Doe">
            <input type="text" name="email" value="john.doe@example.com">
            <input type="text" name="phone" value="+1 (123) 456-7890">

            <div class="info-label">Product Description:</div>
            <input type="text" name="productName" value="Greenhouse Product 1">
            <textarea name="description">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque mollis, quam eu efficitur tincidunt, quam augue volutpat nulla, vel commodo velit eros id quam. Fusce tempus nulla vitae ipsum tristique posuere.</textarea>

            <div class="info-label">Promotions:</div>
            <input type="text" name="promotions" value="Buy 1 Get 1 Free">

            <button type="submit" class="edit-btn">Save</button>
        </form>
    </div>
</body>
</html>

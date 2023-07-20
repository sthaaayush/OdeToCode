<%-- 
    Document   : ownerLoginPage
    Created on : Jul 19, 2023, 10:37:34 PM
    Author     : Neuu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="../component/allCss.jsp"%>
        <style>
    body, html {
      height: 100%;
    }

    .container {
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
  </style>
</head>
<body>
    <%@include file="component/navBar.jsp" %>
  <div class="container">
    <div class="col-md-6">
      <div class="card">
        <div class="card-header">
          <h2 class="mb-0">Owner Login</h2>
        </div>
        <div class="card-body">
          <form>
            <div class="form-group">
              <label for="Email">Email</label>
              <input type="email" class="form-control" id="mail" name="mail" required>
            </div>
                            <br> 
            <div class="form-group">
              <label for="password">Password:</label>
              <input type="password" class="form-control" id="pass" name="pass" required>
            </div>
              <br>               
            <button type="submit" class="btn btn-primary btn-block">Submit</button>
          </form>
        </div>
      </div>
    </div>
  </div>
</body>
</html>
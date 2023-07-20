<%-- 
    Document   : userDashboard
    Created on : Jul 20, 2023, 5:07:25 AM
    Author     : Neuu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Dashboard</title>
        <%@include file="component/allCss.jsp" %>
    </head>
   <body>
    <%@include file="component/navBar.jsp" %>
    <div class="container mt-5">
        <!-- Greenhouse Business Directory -->
        <div class="card">
            <div class="card-header d-flex justify-content-between align-items-center">
                <h3>Greenhouse Business Directory</h3> 
                <div class="d-flex">
                    <div class="nav-item dropdown ml-auto">
                        <a class="nav-link dropdown-toggle" href="#" id="placeDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Filter by Place
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="placeDropdown">
                            <li><a class="dropdown-item" href="ownerLoginPage.jsp">Kathmandu</a></li>
                            <li><a class="dropdown-item" href="customerLoginPage.jsp">Bhaktapur</a></li>
                            <li><a class="dropdown-item" href="ownerLoginPage.jsp">Lalitpur</a></li>
                            <li><a class="dropdown-item" href="customerLoginPage.jsp">Chitwan</a></li>
                        </ul>
                    </div>
                    <div class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="productDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Filter by Product
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="productDropdown">
                            <li><a class="dropdown-item" href="ownerLoginPage.jsp">Tomato</a></li>
                            <li><a class="dropdown-item" href="customerLoginPage.jsp">Potato</a></li>
                            <li><a class="dropdown-item" href="ownerLoginPage.jsp">Spinach</a></li>
                            <li><a class="dropdown-item" href="customerLoginPage.jsp">Herbs</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <p>Users can access a comprehensive directory of greenhouse businesses in their area.</p>
                <p>The directory provides information about greenhouse location, specialized products, and customer reviews.</p>
                <!-- Sample directory list -->
                <div class="list-group">
                    <a href="#" class="list-group-item list-group-item-action">
                        <div class="d-flex w-100 justify-content-between">
                            <h5 class="mb-1">Greenhouse Business 1</h5>
                            <small>Specialized Products: XYZ</small>
                        </div>
                        <p class="mb-1">Location: ABC</p>
                    </a>
                    <a href="#" class="list-group-item list-group-item-action">
                        <div class="d-flex w-100 justify-content-between">
                            <h5 class="mb-1">Greenhouse Business 2</h5>
                            <small>Specialized Products: UVW</small>
                        </div>
                        <p class="mb-1">Location: DEF</p>
                    </a>
                    <a href="#" class="list-group-item list-group-item-action">
                        <div class="d-flex w-100 justify-content-between">
                            <h5 class="mb-1">Greenhouse Business 3</h5>
                            <small>Specialized Products: PQR</small>
                        </div>
                        <p class="mb-1">Location: GHI</p>
                    </a>
                    <!-- Add more greenhouse businesses here -->
                </div>
            </div>
        </div>

    </div>
</body>
</html>
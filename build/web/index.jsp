<%-- 
    Document   : home
    Created on : Jun 2, 2022, 10:35:47 PM
    Author     : Aspire E 14
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Car Rental System Home</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="<%= request.getContextPath()%>/css/bootstrap.min.css">
        <link rel="stylesheet" href="<%= request.getContextPath()%>/css/main-style.css">
    </head>
    <body>
        <!-- TOP NAVIGATION BAR -->
        <nav class="navbar navbar-expand-lg bg-dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Car Rental</a>
                <button class="navbar-toggler tb-btn" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    -
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <%@include file="navbar.jsp" %>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- CONTENT -->
        <div class="text-center">
            <h1 class="text-center pt-5 pb-5">Welcome to our Car Rental Website </h1> 
            <p> Sign up if does not have any account yet </p>
            <p> Click here ! </p>
            <a href="signup.jsp" type="button" class="btn btn-primary">Sign Up</a>
        </div>

        <script src="<%= request.getContextPath()%>/js/bootstrap.bundle.min.js"></script>
    </body>
</html>

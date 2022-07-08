<%-- 
    Document   : login
    Created on : Jun 3, 2022, 1:54:19 AM
    Author     : Aspire E 14
--%>

<%
    String userSession = (String) session.getAttribute("userSession");
%>
<%@page import="com.Model.User"%>
<%@page import="java.sql.*"%>
<%@page import="com.util.DBConnection"%>
<html>
    <head>
        <title>Login - Car Rental</title>
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
                    <%@include file="navbar.jsp" %>
                </div>
            </div>
        </nav>
        <!-- CONTENT -->
        <div class="container-fluid">
            <div class="kotak col-md-5 mx-auto text-center pt-4 pb-4 mt-5">
                <h1 class="mb-3">Login</h1>
                <form action="processLogin.jsp" method="POST">
                    <div class="mb-3 row">
                        <label for="email" class="col-10 offset-1 col-md-2 text-start col-form-label offset-md-3">Email :</label>
                        <div class="col-10 offset-1 col-md-4 offset-md-0">
                            <input type="email" id="email" name="email" class="form-control mb-3" size="60" required="">
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label for="password" class="col-10 offset-1 col-md-2 text-start col-form-label offset-md-3">Password :</label>    
                        <div class="col-10 offset-1 col-md-4 offset-md-0">
                            <div class="input-group">
                                <input type="password" name="password" class="form-control" size="40" id="Password" required="">
                                <div class="input-group-text">
                                    <input type="checkbox" class="form-check-input mt-0" onclick="myFunction()">
                                </div>
                            </div>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary">Login</button>
                    <button type="reset" class="btn btn-light" onclick="window.location.href = 'login.jsp'">Reset</button>
                </form>
                <div class="message col-8 mx-auto">
                    <%
                        String message = (String) request.getAttribute("message");
                        if (message != null) {
                    %>
                    <%=  request.getAttribute("message")%>
                    <%  }%>
                </div>
            </div>
        </div>

        <!-- JavaScript -->
        <script src="<%= request.getContextPath()%>/js/bootstrap.bundle.min.js"></script>
        <script>
                        function myFunction() {
                            var x = document.getElementById("Password");
                            if (x.type === "password") {
                                x.type = "text";
                            } else {
                                x.type = "password";
                            }
                        }
        </script>
    </body>
</html>
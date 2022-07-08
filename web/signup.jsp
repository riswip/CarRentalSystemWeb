<%-- 
    Document   : signup
    Created on : Jun 2, 2022, 10:36:40 PM
    Author     : Aspire E 14
--%>

<%
    String userSession = (String) session.getAttribute("userSession");
%>
<%@page import="com.Model.User" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Sign Up - Car Rental</title>
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
                <h1 class="mb-3">Sign Up</h1>
                <form action="processSignup.jsp" method="post">
                    <div class="mb-3 row">
                        <label for="name" class="col-10 offset-1 col-md-3 text-start col-form-label offset-md-2">Name :</label>
                        <div class="col-10 offset-1 col-md-5">
                            <input type="text" id="name" name="name" class="form-control col" size="60" placeholder="Enter your name" required="">
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label for="name" class="col-10 offset-1 col-md-3 text-start col-form-label offset-md-2">Nick Name :</label>
                        <div class="col-10 offset-1 col-md-5">
                            <input type="text" id="nickname" name="nickname" class="form-control" size="60" placeholder="Enter your nick name" required="">
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label for="age" class="col-10 offset-1 col-md-3 text-start col-form-label offset-md-2">Age :</label>
                        <div class="col-10 offset-1 col-md-5">
                            <input type="text" id="age" name="age" class="form-control" maxlength="3" required="">
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <label for="phoneno" class="col-10 offset-1 col-md-3 text-start col-form-label offset-md-2">Phone No :</label>
                        <div class="col-10 offset-1 col-md-5">
                            <input type="text" id="phoneno" name="phoneno" class="form-control" size="40" placeholder="E.g. 011-12334455" required="">
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <label class="col-10 offset-1 col-md-3 text-start col-form-label offset-md-2">Gender :</label>
                        <div class="col-10 offset-1 col-md-5">
                            <select name="gender" class="form-select" required="">
                                <option value="Male">Male</option>
                                <option value="Female">Female</option>
                            </select>
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label for="email" class="col-10 offset-1 col-md-3 text-start col-form-label offset-md-2">E-mail :</label>
                        <div class="col-10 offset-1 col-md-5">
                            <input type="email" id="email" name="email" class="form-control" size="60" placeholder="Enter your email" required="">
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label for="password" class="col-10 offset-1 col-md-3 text-start col-form-label offset-md-2">Password :</label>
                        <div class="col-10 offset-1 col-md-5">
                            <input type="password" size="40" id="Password" name="password" class="form-control mb-3" required="">
                            <div class="form-check text-start">
                                <input type="checkbox" onclick="myFunction()">
                                <label>Show password</label>
                            </div>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary">Sign up</button>
                    <button type="reset" class="btn btn-light">Cancel</button>
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

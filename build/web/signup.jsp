<%-- 
    Document   : signup
    Created on : Jun 2, 2022, 10:36:40 PM
    Author     : Aspire E 14
--%>

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
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <%@include file="navbar.jsp" %>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- CONTENT -->
        <div class="kotak col-6 text-center pt-5 pb-5">
            <h1 class="mb-3">Sign Up</h1>
            <form action="processSignup.jsp" method="post">
                <div class="mb-3 row">
                    <label for="name" class="col-2 text-start col-form-label offset-3">Name :</label>
                    <div class="col-4">
                        <input type="text" id="name" name="NAME" class="form-control col" size="60" placeholder="Enter your name">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="name" class="col-2 text-start col-form-label offset-3">Nick Name :</label>
                    <div class="col-4">
                        <input type="text" id="nickname" name="NICKNAME" class="form-control" size="60" placeholder="Enter your nick name">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="icno" class="col-2 text-start col-form-label offset-3">Age :</label>
                    <div class="col-4">
                        <input type="text" id="age" name="AGE" class="form-control" size="10" maxlength="3" placeholder="000">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="email" class="col-2 text-start col-form-label offset-3">E-mail :</label>
                    <div class="col-4">
                        <input type="email" id="email" name="EMAIL" class="form-control" size="60" placeholder="Enter your email">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="phoneno" class="col-2 text-start col-form-label offset-3">Phone No :</label>
                    <div class="col-4">
                        <input type="text" id="phoneno" name="PHONENO" class="form-control" size="40" placeholder="E.g.: 011-12334455">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="password" class="col-2 text-start col-form-label offset-3">Password :</label>
                    <div class="col-4">
                        <input type="password" size="40" id="Password" class="form-control mb-3" placeholder="**********">
                        <div class="form-check text-start">
                            <input type="checkbox" onclick="myFunction()">
                            <label>Show password</label>
                        </div>
                    </div>
                </div>
                <div class="mb-3 row">
                    <label class="col-2 text-start col-form-label offset-3">Gender :</label>
                    <div class="col-4">
                        <select name="gender" class="form-select">
                            <option value="Male">Male </option>
                            <option value="Female">Female </option>
                        </select>
                    </div>
                </div>

                <button type="submit" class="btn btn-primary">Sign up</button>
                <button type="reset" class="btn btn-light">Cancel</button>
            </form>
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

<%-- 
    Document   : login
    Created on : Jun 3, 2022, 1:54:19 AM
    Author     : Aspire E 14
--%>

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
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <%@include file="navbar.jsp" %>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- CONTENT -->
        <div class="kotak col-6 text-center pt-5 pb-5">
            <h1 class="mb-3">Login</h1>
            <form action="userAccount.jsp" method="post">
                <div class="mb-3 row">
                    <label for="name" class="col-2 text-start col-form-label offset-3">Nick Name :</label>
                    <div class="col-4">
                        <input type="text" id="nickname" name="NICKNAME" class="form-control mb-3" size="60" placeholder="Enter your nick name">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="password" class="col-2 text-start col-form-label offset-3">Password :</label>    
                    <div class="col-4">
                        <input type="password" name="PASSWORRD" class="form-control mb-3" size="40" id="Password" placeholder="**********">
                        <div class="form-check text-start">
                            <input type="checkbox" onclick="myFunction()">
                            <label>Show Password</label>
                        </div>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary">Login</button>
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

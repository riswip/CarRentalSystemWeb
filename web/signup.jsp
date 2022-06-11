<%-- 
    Document   : signup
    Created on : Jun 2, 2022, 10:36:40 PM
    Author     : Aspire E 14
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>SIGN UP</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
        body {
          margin: 0;
          font-family: Arial, Helvetica, sans-serif;
          background-image: url("https://www.rentacarkerala.in/wp-content/uploads/2018/10/best.jpg");
          background-size: 100%;
        }
        .topnav {
          overflow: hidden;
          background-color: #040405;
        }
        .topnav a {
          float: left;
          color: #ED8BF9;
          text-align: center;
          padding: 14px 16px;
          text-decoration: none;
          font-size: 17px;
        }
        .topnav a:hover {
          background-color: #ED8BF9;
          color: black;
        }
        .topnav a.active {
          background-color: #F74211;
          color: white;
        }
        div {
            text-align: justify-all;
        }
        button {
          border: 2px solid #AD078A;
          color: palegoldenrod;
          padding: 20px 40px;
          text-align: center;
          text-decoration: pink;
          display: inline-block;
          font-size: 20px;
          margin: 10px 10px;
          cursor: pointer;
          background-color: black;
          font: Arial;
        }
        form group {
          background-color: tan;
          border: 10px solid rgb(255,232,57);
          width: 700px;
          float: start;
        }
        </style>
    </head>
    <body>
        <!-- TOP NAVIGATION -->
        <div class="topnav">
            <a class="active" href="index.jsp">Home</a>
            <a href="login.jsp">Login</a>
            <a href="carrentanddetails.jsp">Car Rent And Details</a>
            <a href="payment.jsp">Payment</a>
        </div>
        <!-- CONTENT -->
        <div>
            <div class="form group">
                <form action="processSignup.jsp" method="post">
                    <label for="name">Name :</label>
                    <input type="text" id="name" name="NAME"size="60" placeholder="Enter your name"><br><br/>

                    <label for="name">Nick Name :</label>
                    <input type="text" id="nickname" name="NICKNAME"size="60" placeholder="Enter your nick name"><br><br/>              

                    <label for="icno">Age :</label>
                    <input type="text" id="age" name="AGE" size="10" maxlength="3" placeholder="000"><br><br/>  

                    <label for="email">E-mail :</label>
                    <input type="text" id="email" name="EMAIL"size="60" placeholder="Enter your email"><br><br/>

                    <label for="phoneno">Phone No :</label>
                    <input type="text" id="phoneno" name="PHONENO" size="40" placeholder="E.g.: 011-12334455"><br><br/> 

                    <label for="password">Password :</label>    
                    <input type="password"  size="40" id="PASSWORRD" placeholder="**********"><br><br/>
                    <input type="checkbox" onclick="myFunction()">Show Password <br><br/>

                    <label>Gender :</label>
                    <select name="gender">
                        <option value="Male">Male </option>
                        <option value="Female">Female </option>
                    </select> <br><br/>
                    
                    <button> <input type="Submit">Submit</button>
                    <button> <input type="reset">Cancel</button>
                </form>
            </div>
            
        <!-- JavaScript -->
        <script>
            function myFunction() {
                var x = document.getElementById("Password");
                if (x.type === "password") {
                    x.type = "text";
                } 
                else {
                    x.type = "password";
                }
            }
        </script>
    </body>
</html>

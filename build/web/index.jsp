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
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="viewport" content="width=device-width, initial-scale=1">
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
    text-align: center;
}
button {
  border: 2px solid #AD078A;
  color: pink;
  padding: 20px 40px;
  text-align: center;
  text-decoration: purple;
  display: inline-block;
  font-size: 30px;
  margin: 40px 20px;
  cursor: pointer;
  background-color: black;
  font: Arial;
}

</style>
</head>
<body>

<div class="topnav">
  <a class="active" href="#home">Home</a>
  <a href="login.jsp">Login</a>
  <a href="carrentanddetails.jsp">Car Rent And Details</a>
  <a href="payment.jsp">Payment</a>
</div>

    <div>
        <h1>Welcome to our Car Rental Website </h1> 
        <p> Sign up if does not have any account yet </p>
        <p> Click here ! </p>
        <button><a href="signup.jsp">SIGN UP</a></button>
    </div>
    
  
     

       
    </body>
</html>
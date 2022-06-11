<%-- 
    Document   : payment
    Created on : Jun 4, 2022, 3:36:51 PM
    Author     : Aspire E 14
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>PAYMENT</title>
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
        fieldset {
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
          <a href="#Payment">Payment</a>
        </div>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
        body {
          font-family: Arial;
          font-size: 17px;
          padding: 8px;
        }

        * {
          box-sizing: border-box;
        }

        .row {
          display: -ms-flexbox; /* IE10 */
          display: flex;
          -ms-flex-wrap: wrap; /* IE10 */
          flex-wrap: wrap;
          margin: 0 -16px;
        }

        .col-25 {
          -ms-flex: 25%; /* IE10 */
          flex: 25%;
        }

        .col-50 {
          -ms-flex: 50%; /* IE10 */
          flex: 50%;
        }

        .col-75 {
          -ms-flex: 75%; /* IE10 */
          flex: 75%;
        }

        .col-25,
        .col-50,
        .col-75 {
          padding: 0 16px;
        }

        .container {
          background-color: #f2f2f2;
          padding: 5px 20px 15px 20px;
          border: 1px solid lightgrey;
          border-radius: 3px;
        }

        input[type=text] {
          width: 100%;
          margin-bottom: 20px;
          padding: 12px;
          border: 1px solid #ccc;
          border-radius: 3px;
        }

        label {
          margin-bottom: 10px;
          display: block;
        }

        .icon-container {
          margin-bottom: 20px;
          padding: 7px 0;
          font-size: 24px;
        }

        .btn {
          background-color: #04AA6D;
          color: white;
          padding: 12px;
          margin: 10px 0;
          border: none;
          width: 100%;
          border-radius: 3px;
          cursor: pointer;
          font-size: 17px;
        }

        .btn:hover {
          background-color: #45a049;
        }

        a {
          color: #2196F3;
        }

        hr {
          border: 1px solid lightgrey;
        }

        span.price {
          float: right;
          color: grey;
        }

        /* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
        @media (max-width: 800px) {
          .row {
            flex-direction: column-reverse;
          }
          .col-25 {
            margin-bottom: 20px;
          }
        }
        </style>
    </head>
    <body>
        <h2>Payment Details</h2>
        <p>Please proceed this payment for rental confirmation.</p>
        <div class="row">
            <div class="col-75">
                <div class="container">
                <form action="/action_page.php">
                    <div class="col-50">
                    <h3>Payment</h3>
                    <label for="fname">Accepted Cards</label>
                    <div class="icon-container">
                        <i class="fa fa-cc-visa" style="color:navy;"></i>
                        <i class="fa fa-cc-amex" style="color:blue;"></i>
                        <i class="fa fa-cc-mastercard" style="color:red;"></i>
                        <i class="fa fa-cc-discover" style="color:orange;"></i>
                    </div>
                    <label for="cname">Name on Card</label>
                    <input type="text" id="cname" name="cardname" placeholder="Name on Card">
                    <label for="ccnum">Credit card number</label>
                    <input type="text" id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444">
                    <label> Exp month : </label>
                    <select name="expmonth">
                        <option value="Male"> January </option>
                        <option value="Female"> February </option>
                        <option value="Male"> March </option>
                        <option value="Female"> April </option>
                        <option value="Male"> May </option>
                        <option value="Female"> June </option>
                        <option value="Male"> July </option>
                        <option value="Female"> August </option>
                        <option value="Male"> September </option>
                        <option value="Female"> October </option>
                        <option value="Male"> November </option>
                        <option value="Female"> December </option>
                    </select>
                    </div>     
                </div>
            </div>
        </div>

                <input type="submit" value="Continue for the receipt" class="btn">
                </form>
            </div>
          </div>

        </div>
    </body>
</html>

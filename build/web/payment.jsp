<%-- 
    Document   : payment
    Created on : Jun 4, 2022, 3:36:51 PM
    Author     : Aspire E 14
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Payment - Car Rental</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="<%= request.getContextPath()%>/css/bootstrap.min.css">
        <link rel="stylesheet" href="<%= request.getContextPath()%>/css/main-style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
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
                background-color: gray;
                border: 10px solid rgb(255,232,57);
                width: 700px;
                float: start;
            }
        </style>
        <style>
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
        <div class="container col-4 pt-5 pb-5 mt-5 mb-5">
            <form action="" method="POST">
                <div class="">
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
                    <div class="container-md">
                        <div class="mb-3 row">
                            <label class="col-form-label col-3"> Exp month : </label>
                            <div class="col-4">
                                <select name="expmonth" class="form-select">
                                    <option value="January"> January </option>
                                    <option value="February"> February </option>
                                    <option value="March"> March </option>
                                    <option value="April"> April </option>
                                    <option value="May"> May </option>
                                    <option value="June"> June </option>
                                    <option value="July"> July </option>
                                    <option value="August"> August </option>
                                    <option value="September"> September </option>
                                    <option value="October"> October </option>
                                    <option value="November"> November </option>
                                    <option value="December"> December </option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <input type="submit" value="Continue for the receipt" class="btn">
                </div>    
            </form>
        </div>

        <!-- JavaScript -->
        <script src="<%= request.getContextPath()%>/js/bootstrap.bundle.min.js"></script>
    </body>
</html>

<%-- 
    Document   : login
    Created on : Jun 3, 2022, 1:54:19 AM
    Author     : Aspire E 14
--%>

<html>
    <head>
        <title>LOGIN</title>
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
            <a href="#news">Login</a>
            <a href="carrentanddetails.jsp">Car Rent And Details</a>
            <a href="payment.jsp">Payment</a>
        </div>
        <div>
            
             <div class="form group">
                <form action="userAccount.jsp" method="post">
                
                    <div class="">
                        <label for="name">Nick Name :</label>
                    <input type="text" id="nickname" name="NICKNAME"size="60" placeholder="Enter your nick name"><br><br/>  
                    </div>
                    <div class="">
                         <label for="password">Password :</label>    
                    <input type="password" name="PASSWORRD" size="40" id="PASSWORRD" placeholder="**********"><br><br/>
                    <input type="checkbox" onclick="myFunction()">Show Password <br><br/>

                    <div class="">
                        <button> <input type="Submit"></button>
                    <button> <input type="reset"></button>
                    </div>
                </form>

             </div></div>
        
        <!-- JavaScript -->
        <script>
        function myFunction() {
            var x = document.getElementById("PASSWORRD");
            if (x.type === "PASSWORRD") {
                x.type = "text";
            } 
            else {
                x.type = "PASSWORRD";
            }
        }
        </script>
    </body>
</html>

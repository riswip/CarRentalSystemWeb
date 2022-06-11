<%-- 
    Document   : carrentanddetails
    Created on : Jun 4, 2022, 3:16:47 PM
    Author     : Aspire E 14
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>CAR RENT AND DETAILS</title>
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
            background-color: gray;
            border: 10px solid ;
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
            <a href="#carrentanddetails">Car Rent And Details</a>
            <a href="payment.jsp">Payment</a>
        </div>
        
        <!-- CONTENT -->
        <fieldset>
        <div class="form group">
                <form action="book.jsp" method="post">
            <p><strong>PERODUA MYVI</strong></p>
            <p>
            <img src="https://upload.wikimedia.org/wikipedia/commons/5/5b/2013_Perodua_Myvi_1.3_SE_%28S-Series%29_in_Cyberjaya%2C_Malaysia_%2803%29.jpg" alt="PERODUA MYVI" style="float:left;width:400px;height:300px;">
            Car Type : Perodua Myvi AUTO <br><br/>
            Car Number Plate : ABC1234 <br><br/>
            Charge Per/Hour : RM7/1 hour <br><br/>
            Capacity : 4 person <br><br/>
            Status : Available until 2300 hours <br><br/>
            <button <input type="Submit">BOOK NOW</button></form></div></fieldset>
            </p>
       
            <fieldset>
        <div class="form group">
                <form action="book.jsp" method="post">
            <p><strong>PERODUA VIVA</strong></p>
            <p>
            <img src="https://lepaskunci.com.my/storage/vehicle/1276/file_1640189179_61c34cfb15d5c.jpg" alt="PERODUA VIVA" style="float:left;width:400px;height:300px;">
            Car Type : Perodua Viva AUTO <br><br/>
            Car Number Plate : BCD7890 <br><br/>
            Charge Per/Hour : RM7/1 hour <br><br/>
            Capacity : 4 person <br><br/>
            Status : Available until 2300 hours <br><br/>
            <button <input type="Submit">BOOK NOW</button></form></div></fieldset>
            </p>
       
            <fieldset>
            <div class="form group">
                <form action="book.jsp" method="post">
            <p><strong>PERODUA AXIA</strong></p>
            <p>
            <img src="https://paultan.org/image/2019/09/Perodua_Axia_FL_GXtra__GearUp_Malaysia-2-BM.jpg" alt="PERODUA AXIA" style="float:left;width:400px;height:300px;">
            Car Type : Perodua Axia AUTO <br><br/>
            Car Number Plate : TBG 8008 <br><br/>
            Charge Per/Hour : RM7/1 hour <br><br/>
            Capacity : 4 person <br><br/>
            Status : Available until 2300 hours <br><br/>
            <button <input type="Submit">BOOK NOW</button></form></div></fieldset>
            </p>
       
            <fieldset>
            <div class="form group">
                <form action="book.jsp" method="post">
            <p><strong>PROTON SAGA ISWARA </strong></p>
            <p>
            <img src="https://fichasmotor.com/images/proton/proton-saga-iswara-1-5i-90-cv.webp" alt="PROTON SAGA ISWARA" style="float:left;width:400px;height:300px;">
            Car Type : Proton Saga Iswara MANUAL <br><br/>
            Car Number Plate : W 786 C <br><br/>
            Charge Per/Hour : RM7/1 hour <br><br/>
            Capacity : 5 person <br><br/>
            Status : Available until 2300 hours <br><br/>
            <button <input type="Submit">BOOK NOW</button></form></div></fieldset>
            </p>
    

            
            
                
    </body>
</html>

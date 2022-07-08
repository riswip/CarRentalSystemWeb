<%-- 
    Document   : book
    Created on : Jun 11, 2022, 2:33:50 PM
    Author     : Aspire E 14
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Car Rental</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="<%= request.getContextPath()%>/css/bootstrap.min.css">
        <link rel="stylesheet" href="<%= request.getContextPath()%>/css/main-style.css">
    </head>
    <body>
        <h2>DETAILS OF CAR FOR CONFIRMATION BOOKING</h2>

        <p>
            Car Type : Perodua Myvi AUTO <br><br/>
            Car Number Plate : ABC1234 <br><br/>
            Charge Per/Hour : RM7/1 hour <br><br/>
            Capacity : 4 person <br><br/>
            Status : Available until 2300 hours <br><br/>
        </p>
    </body>
</html>

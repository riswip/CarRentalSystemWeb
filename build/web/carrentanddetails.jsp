<%-- 
Document   : carrentanddetails
Created on : Jun 4, 2022, 3:16:47 PM
Author     : Aspire E 14
--%>

<%
    String userSession = (String) session.getAttribute("userSession");
    DBConnection con = new DBConnection();
%>
<%@page import="com.Model.Car"%>
<%@page import="com.Model.User"%>
<%@page import="java.sql.*"%>
<%@page import="com.util.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Car Details - Car Rental</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="<%= request.getContextPath()%>/css/bootstrap.min.css">
        <link rel="stylesheet" href="<%= request.getContextPath()%>/css/main-style.css">
    </head>
    <body>
        <!-- TOP NAVIGATION BAR -->
        <nav class="navbar navbar-expand-lg bg-dark sticky-top">
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
            <div class="col-md-6 mx-auto text-center pt-4 pb-4 mt-md-5">
                <h1 class="mb-3">Car Details</h1>
                <%
                    Car car = new Car();

                    String sqlCar = "SELECT * FROM car ORDER BY brand ASC";
                    Statement stmtCar = con.getConnection().createStatement();
                    ResultSet rsCar = stmtCar.executeQuery(sqlCar);

                    while (rsCar.next()) {
                %>
                <div class="mb-3 car-list">
                    <p class="car-name"><%= rsCar.getString(3)%> - <%= rsCar.getString(2)%></p>
                    <div class="row">
                        <div class="col-12 col-md mb-3">
                            <img src="images/<%= rsCar.getString(9)%>" alt="" class="img-car img-thumbnail">
                        </div>
                        <div class="col">
                            <div class="mb-3 text-start">
                                <label class="col-5 offset-1 offset-md-0 col-md-4">Car Name</label>: <%= rsCar.getString(2)%>
                            </div>
                            <div class="mb-3 text-start">
                                <label class="col-5 offset-1 offset-md-0 col-md-4">Brand</label>: <%= rsCar.getString(3)%>
                            </div>
                            <div class="mb-3 text-start">
                                <label class="col-5 offset-1 offset-md-0 col-md-4">Transmission</label>: <%= rsCar.getString(4)%>
                            </div>
                            <div class="mb-3 text-start">
                                <label class="col-5 offset-1 offset-md-0 col-md-4">Plate No</label>: <%= rsCar.getString(5)%>
                            </div>
                            <div class="mb-3 text-start">
                                <label class="col-5 offset-1 offset-md-0 col-md-4">Rate/hour</label>: <%= rsCar.getString(6)%>
                            </div>
                            <div class="mb-3 text-start">
                                <label class="col-5 offset-1 offset-md-0 col-md-4">Passenger</label>: <%= rsCar.getString(7)%> People
                            </div>
                            <div class="mb-3 text-start">
                                <label class="col-5 offset-1 offset-md-0 col-md-4">Status</label>: <%= rsCar.getString(8)%>
                            </div>
                            <div class="mb-3 text-md-start">
                                <button type="submit" class="btn btn-light">BOOK NOW</button>
                            </div>
                        </div>
                    </div>
                </div>
                <%  }%>
            </div>
        </div>

        <!-- JavaScript -->
        <script src="<%= request.getContextPath()%>/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
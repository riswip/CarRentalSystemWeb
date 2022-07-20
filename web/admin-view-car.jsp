<%-- 
    Document   : admin-view-car
    Created on : 9 Jul 2022, 7:35:38 pm
    Author     : Asyraf
--%>

<%
    String userSession = (String) session.getAttribute("userSession");
    int admin = 1;
    int customer = 2;

    if (userSession == null) {
        request.setAttribute("message", "<p class='alert alert-warning'>Your session has ended. Please login to continue</p>");
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }
    if (userSession != null) {
        DBConnection con = new DBConnection();

        String sql = "SELECT * FROM users WHERE email='" + userSession + "' AND roleid='" + admin + "'";
        Statement stmt = con.getConnection().createStatement();
        ResultSet rs = stmt.executeQuery(sql);

        while (rs.next()) {
%>
<%@page import="com.Model.User"%>
<%@page import="com.Model.Car"%>
<%@page import="java.sql.*"%>
<%@page import="com.util.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Admin - View Car</title>
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
                    <%@include file="navbar-admin.jsp" %>
                </div>
            </div>
        </nav>
        <!-- CONTENT -->
        <div class="container-fluid">
            <div class="kotak col-md-6 mx-auto pt-4 pb-4 p-md-5 mt-5">
                <h1 class="text-center">Car List</h1>
                <table class="table table-striped table-responsive-sm">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Car Name</th>
                            <th>Brand</th>
                            <th>Plate</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <%
                        int i = 1;
                        Car car = new Car();

                        String sqlCar = "SELECT * FROM car ORDER BY brand ASC";
                        Statement stmtCar = con.getConnection().createStatement();
                        ResultSet rsCar = stmtCar.executeQuery(sqlCar);

                        while (rsCar.next()) {
                    %>
                    <tbody>
                        <tr>
                            <td><%= i++%></td>
                            <td><%= rsCar.getString(2)%></td>
                            <td><%= rsCar.getString(3)%></td>
                            <td><%= rsCar.getString(5)%></td>
                            <td><%= rsCar.getString(8)%></td>
                            <td>
                                <button class="btn btn-light" onclick="window.location.href = 'admin-update-car.jsp?id=<%= rsCar.getInt(1) %>'"><span class="bi bi-pencil-square"></span></button>
                                <a href="process-delete-car.jsp?plate=<%= rsCar.getString(5)%>">
                                    <button class="btn btn-danger" onclick="return confirm('Confirm to delete?');"><span class="bi bi-x"></span></button>
                                </a>
                            </td>
                        </tr>
                    </tbody>
                    <%  }%>
                </table>
                <div class="message col-10 col-md-8 mx-auto text-center">
                    <%
                        String message = (String) request.getAttribute("message");
                        if (message != null) {
                    %>
                    <%=  request.getAttribute("message")%>
                    <%  }%>
                </div>
            </div>
        </div>

        <!-- JavaScript -->
        <script src="<%= request.getContextPath()%>/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
<%      }
    }
%>
<%-- 
    Document   : account
    Created on : 8 Jul 2022, 7:51:47 pm
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
<%@page import="java.sql.*"%>
<%@page import="com.util.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Admin - Dashboard</title>
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
                <h1 class="text-center">Welcome, Admin</h1>
                <div class="mb-3 row">
                    <label class="col-form-label col-2">Name</label>
                    <label class="col-form-label col">: <%= rs.getString(2)%></label>
                </div>
                <div class="mb-3 row">
                    <label class="col-form-label col-2">Email</label>
                    <label class="col-form-label col">: <%= rs.getString(7)%></label>
                </div>
            </div>
        </div>

        <!-- JavaScript -->
        <script src="<%= request.getContextPath()%>/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
<%      }
    }
    if (userSession != null) {
        DBConnection con = new DBConnection();

        String sql = "SELECT * FROM users WHERE email='" + userSession + "' AND roleid='" + customer + "'";
        Statement stmt = con.getConnection().createStatement();
        ResultSet rs = stmt.executeQuery(sql);

        while (rs.next()) {
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Customer - Profile</title>
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
                    <%@include file="navbar.jsp" %>
                </div>
            </div>
        </nav>
        <!-- CONTENT -->
        <div class="container-fluid">
            <div class="kotak col-md-6 mx-auto pt-4 pb-4 p-md-5 mt-5">
                <h1 class="text-center mb-3">Profile</h1>
                <table class="table table-light table-striped">
                    <thead>
                        <tr>
                            <th colspan="2">My Details</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th>Full Name</th>
                            <td><%= rs.getString(2)%></td>
                        </tr>
                        <tr>
                            <th>Nickname</th>
                            <td><%= rs.getString(3)%></td>
                        </tr>
                        <tr>
                            <th>Age</th>
                            <td><%= rs.getString(4)%></td>
                        </tr>
                        <tr>
                            <th>Phone No</th>
                            <td><%= rs.getString(5)%></td>
                        </tr>
                        <tr>
                            <th>Gender</th>
                            <td><%= rs.getString(6)%></td>
                        </tr>
                        <tr>
                            <th>Email</th>
                            <td><%= rs.getString(7)%></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <!-- JavaScript -->
        <script src="<%= request.getContextPath()%>/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
<%      }
    }
%>
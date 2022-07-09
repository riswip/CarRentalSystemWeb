<%-- 
    Document   : admin-add-car
    Created on : 9 Jul 2022, 7:32:02 pm
    Author     : Asyraf
--%>

<%
    String userSession = (String) session.getAttribute("userSession");
    int admin = 1;
    int customer = 2;

    if (userSession == null) {
        request.setAttribute("message", "<p class='alert warning'>Your session has ended. Please login to continue</p>");
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
        <title>Admin - Add Car</title>
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

        <!-- JavaScript -->
        <script src="<%= request.getContextPath()%>/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
<%      }
    }
%>
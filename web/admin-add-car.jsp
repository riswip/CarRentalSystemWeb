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
        <!-- CONTENT -->
        <div class="container-fluid">
            <div class="kotak col-md-5 mx-auto pt-4 pb-4 mt-5 mb-5">
                <h1 class="mb-3 text-center">Add Car</h1>
                <form class="row g-3 pe-3 ps-4 pe-md-5 ps-md-5" action="addCarServlet" method="POST" enctype="multipart/form-data">
                    <div class="col-md-6">
                        <label for="" class="form-label">Car Name</label>
                        <input type="text" id="" name="carName" class="form-control col" value="${param.carName}" size="60" required="">
                    </div>
                    <div class="col-md-6">
                        <label for="" class="form-label">Brand</label>
                        <input type="text" id="" name="brand" class="form-control" value="${param.brand}" size="60" required="">
                    </div>
                    <div class="col-md-6">
                        <label for="" class="form-label">Transmission</label>
                        <select name="transmission" class="form-select" required="">
                            <option value="Automatic">Automatic</option>
                            <option value="Manual">Manual</option>
                        </select>
                    </div>
                    <div class="col-md-6">
                        <label for="" class="form-label">Plate</label>
                        <input type="text" id="" name="plateNo" class="form-control" value="${param.plateNo}" size="40" required="">
                    </div>
                    <div class="col-md-6">
                        <label class="form-label">Rate/hour</label>
                        <input type="text" id="" name="rate" class="form-control" value="${param.rate}" maxlength="3" required="">
                    </div>
                    <div class="col-md-6">
                        <label for="" class="form-label">No of Passenger</label>
                        <input type="text" id="" name="passenger" class="form-control" value="${param.passenger}" size="60" required="">
                    </div>
                    <div class="col-md-6">
                        <label for="" class="form-label">Status</label>
                        <select name="status" class="form-select" required="">
                            <option value="Available">Available</option>
                            <option value="Unavailable">Unavailable</option>
                            <option value="Under Maintenance">Under Maintenance</option>
                        </select>
                    </div>
                    <div class="col-md-6">
                        <label for="" class="form-label">Upload car image</label>
                        <input type="file" id="" name="file" class="form-control" required="">
                    </div>
                    <div class="mt-3 mb-3 p-1 text-center">
                        <button type="submit" class="btn btn-primary col-5 col-md-3">Submit</button>
                        <button type="reset" class="btn btn-light col-5 col-md-3" onclick="window.location.href = 'admin-add-car.jsp'">Cancel</button>
                    </div>
                </form>
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
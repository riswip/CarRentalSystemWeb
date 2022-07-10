<%-- 
    Document   : process-add-car
    Created on : 9 Jul 2022, 10:13:36 pm
    Author     : Asyraf
--%>

<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page import="com.util.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Process Add Car</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <jsp:useBean id="car" class="com.Model.Car" scope="request"/>
        <jsp:setProperty name="car" property="*"/>
        <%
            int result;
            DBConnection con = new DBConnection();

            //CHECK EXISTING CAR PLATE AVOID DUPLICATE ENTRY
            String sqlCheck = "SELECT * FROM car WHERE plate='" + car.getPlateNo() + "'";
            Statement stmt = con.getConnection().createStatement();
            ResultSet rs = stmt.executeQuery(sqlCheck);

            if (!rs.next()) {

                //INSERT CAR RECORD WHEN THERE IS NO EXISTING CAR WITH SAME PLATE
                String sql = "INSERT INTO car(carName, brand, transmission, plate, rateHour, passenger, carStatus) "
                        + "VALUES(?,?,?,?,?,?,?)";
                PreparedStatement ps = con.getConnection().prepareStatement(sql);
                ps.setString(1, car.getCarName());
                ps.setString(2, car.getBrand());
                ps.setString(3, car.getTransmission());
                ps.setString(4, car.getPlateNo());
                ps.setDouble(5, car.getRate());
                ps.setInt(6, car.getPassenger());
                ps.setString(7, car.getStatus());
                ps.executeUpdate();

                request.setAttribute("message", "<p class='alert alert-success'>Add car successfully</p>");
                request.getRequestDispatcher("admin-add-car.jsp").forward(request, response);
            } else {
                request.setAttribute("message", "<p class='alert alert-danger'>Failed to add car! Plate No. " + car.getPlateNo() + " already exist.</p>");
                request.getRequestDispatcher("admin-add-car.jsp").forward(request, response);
            }
            con.getConnection().close();
        %>
    </body>
</html>

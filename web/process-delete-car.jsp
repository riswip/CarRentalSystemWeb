<%-- 
    Document   : process-delete-car
    Created on : 10 Jul 2022, 2:52:41 am
    Author     : Asyraf
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.util.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Process Delete Car</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%
            String plate = request.getParameter("plate");
            DBConnection con = new DBConnection();
            
            String sql = "DELETE FROM car WHERE plate=?";
            PreparedStatement ps = con.getConnection().prepareStatement(sql);
            ps.setString(1, plate);
            ps.executeUpdate();
            
            request.setAttribute("message", "<p class='alert alert-success'>Record delete successfully.</p>");
            request.getRequestDispatcher("admin-view-car.jsp").forward(request, response);
        %>
    </body>
</html>

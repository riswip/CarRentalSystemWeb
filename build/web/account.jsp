<%-- 
    Document   : account
    Created on : 8 Jul 2022, 7:51:47 pm
    Author     : Asyraf
--%>

<%
    String userSession = (String)session.getAttribute("userSession");
    
    if(userSession == null) {
        request.setAttribute("message", "Your session has ended. Please login to continue");
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }
    if(userSession != null) {
        DBConnection con = new DBConnection();
        
        String sql = "SELECT * FROM users WHERE email='" + userSession + "'";
        Statement stmt = con.getConnection().createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        
        while(rs.next()) {
%>
<%@page import="com.Model.User"%>
<%@page import="java.sql.*"%>
<%@page import="com.util.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>User Account - Car Rental</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        Welcome, <%= rs.getString(2) %>
    </body>
</html>
<%      }
    }
%>
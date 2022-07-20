<%-- 
    Document   : processLogin1
    Created on : 20 Jul 2022, 12:46:12 pm
    Author     : Asyraf
--%>

<%@page import="java.sql.*"%>
<%@page import="com.util.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <jsp:useBean id="User" class="com.Model.User" scope="request"/>
        <jsp:setProperty name="User" property="*"/>
        <%
            int result;

            DBConnection con = new DBConnection();
            
            //CHECK USER EMAIL AND PASSWORD
            String sql = "SELECT * FROM users WHERE email='" + User.getEmail() + "' AND pass='" + User.getPassword() + "'";
            Statement stmt = con.getConnection().createStatement();
            ResultSet rs = stmt.executeQuery(sql);

            if (rs.next()) {
                session.setAttribute("userSession", User.getEmail());
                request.getRequestDispatcher("account.jsp").forward(request, response);
            } else {
                request.setAttribute("message", "<p class='alert alert-danger'>Failed to login! Wrong email or password.</p>");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
            con.getConnection().close();
        %>
    </body>
</html>

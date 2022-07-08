<%-- 
    Document   : processSignup
    Created on : Jun 10, 2022, 3:12:56 PM
    Author     : Aspire E 14
--%>

<%@page import="com.util.DBConnection"%>
<%@page language="java"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <jsp:useBean id="User" class="com.Model.User" scope="request"/>
        <jsp:setProperty name="User" property="*"/>
        <%
            int result;

            DBConnection con = new DBConnection();

            String sqlCheck = "SELECT * FROM users WHERE email='" + User.getEmail() + "'";
            Statement stmt = con.getConnection().createStatement();
            ResultSet rs = stmt.executeQuery(sqlCheck);

            if (rs.next() != true) {
                String sql = "INSERT INTO users(userName, userNickName, age, phoneNo, gender, email, pass) VALUES(?,?,?,?,?,?,?)";

                PreparedStatement myPS = con.getConnection().prepareStatement(sql);

                myPS.setString(1, User.getName());
                myPS.setString(2, User.getNickname());
                myPS.setString(3, User.getAge());
                myPS.setString(4, User.getPhoneno());
                myPS.setString(5, User.getGender());
                myPS.setString(6, User.getEmail());
                myPS.setString(7, User.getPassword());
                myPS.executeUpdate();

                request.setAttribute("message", "<p class='alert alert-success'>Sign up successful. Login to continue.</p>");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            } else {
                request.setAttribute("message", "<p class='alert alert-danger'>Failed to sign up email " + User.getEmail() + " already exist.</p>");
                request.getRequestDispatcher("signup.jsp").forward(request, response);
            }
            con.getConnection().close();;
        %>
    </body>
</html>
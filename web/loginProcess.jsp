<!DOCTYPE html>
<html>
  <head>
    <title>loginProcess</title>
  </head>
  <body>
    <%
      String userNickname = request.getParameter("nickname");
      String userPass = request.getParameter("password");
      
      Class.forName("com.mysql.jdbc.Driver");
            
      String myURL = "jdbc:mysql://localhost:3306/carrental";
      Connection myConnection = DriverManager.getConnection(myURL, "root", "admin");
      
      String sql = "SELECT * FROM signup WHERE NICKNAME='" + userNickname + "'";
      Statement stmt = myConnection.createStatement(sql);
      ResultSet rs = stmt.executeQuery(sql);
      
      if(rs.next()) {
        session.setAttribute("nickname", userNickname);
        response.sendRedirect("/userAccount.jsp");
      }
      else {
        out.print("<p> Wrong username or password!</p>");
        request.getRequestDispatcher("login.jsp").include(request, response);
      }
    %>    
  </body>
</html>

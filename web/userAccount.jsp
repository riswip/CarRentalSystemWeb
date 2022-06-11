<!DOCTYPE html>
<html>
  <head>
    <title> User Account </title>
  </head>
  <body>
    <%
      String loginSession = (String)session.getAttribute("nickname");
      
      if(loginSession == null) {
        response.sendRedirect("/login.jsp");
      }
      if(loginSession != null) {
        Class.forName("com.mysql.jdbc.Driver");
        
        String myURL = "jdbc:mysql://localhost:3306/carrental";
        Connection myConnection = DriverManager.getConnection(myURL, "root", "admin");
        
        Statement stmt = myConnection.createStatement();
        String sql = "SELECT * FROM signup WHERE NICKNAME ='" + loginSession + "'";
        ResultSet rs = stmt.executeQuery(sql);
        
        while(rs.next()) {
    %>
    
    <h1> Welcome, <%= rs.getString(1) %> </h1>
    <p>Nickname: <%= rs.getString(2) %> </p>
    <p>Age: <%= rs.getString(3) %> </p>
    <p>Email: <%= rs.getString(4) %> </p>
    <p>Gender: <%= rs.getString(7) %> </p>
    
    <%  } %>
  </body>
</html>

<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
  <head>
    <title> User Account </title>
  </head>
  <body>
    <%
      String NICKNAME=request.getParameter("NICKNAME"); 
      session.setAttribute("loginSession",NICKNAME);
     /// String loginSession = (String)session.setAttribute("NICKNAME");
      String PASSWORRD=request.getParameter("PASSWORRD"); 
      if(session.getAttribute("loginSession") == null) {
        response.sendRedirect("login.jsp");
      }
      if(session.getAttribute("loginSession") != null) {
            Class.forName("com.mysql.jdbc.Driver");
            
            String myURL = "jdbc:mysql://localhost:3306/carrental";
            Connection myConnection = DriverManager.getConnection(myURL, "root", "admin");
        
        Statement stmt = myConnection.createStatement();
        String sql = "SELECT * FROM signup WHERE NICKNAME ='" + session.getAttribute("loginSession") + "' && PASSWORRD ='" + PASSWORRD + "' ";
        ResultSet rs = stmt.executeQuery(sql);
        
        try{
	rs.next();
	        if(rs.getString("NICKNAME").equals(session.getAttribute("loginSession"))&&rs.getString("PASSWORRD").equals(PASSWORRD)) 
			{ 
			      out.println("Welcome "  +session.getAttribute("loginSession")); 
			} 
		else{
			 out.println("Invalid password or username.");
		    }
}
catch (Exception e) {
e.printStackTrace();
}
    %>
    
    <h1> Welcome, <%= rs.getString(1) %> </h1>
    <p>Nickname: <%= rs.getString(2) %> </p>
    <p>Age: <%= rs.getString(3) %> </p>
    <p>Email: <%= rs.getString(4) %> </p>
    <p>Gender: <%= rs.getString(7) %> </p><br>
    
    <p><a href="logout.jsp">Logout</a></p>
    
    <%  } %>
  </body>
</html>

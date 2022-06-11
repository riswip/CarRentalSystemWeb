<%-- 
    Document   : processlogin
    Created on : Jun 11, 2022, 10:46:21 AM
    Author     : Aspire E 14
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java"%>
<%@page import="java.sql.*"%>


<!DOCTYPE html>
<html>
    
    <body>
       
        <jsp:useBean id="myAuthor" class="com.Carrental.insertlogin" scope="request"/>
        <jsp:setProperty name="myAuthor" property="*"/>
          
        <%
            int result;
            
            Class.forName("com.mysql.jdbc.Driver");
            
            String myURL = "jdbc:mysql://localhost:3306/carrental";
            Connection myConnection = DriverManager.getConnection(myURL, "root", "admin");
            
            String sInsertQry = "INSERT INTO login(NICKNAME,PASSWORRD) VALUES(?,?,)";
            
            PreparedStatement myPS = myConnection.prepareStatement(sInsertQry);
            
            myPS.setString(1, myAuthor.getNICKNAME());
            myPS.setString(2, myAuthor.getPASSWORRD());
            

            result = myPS.executeUpdate();
            
            if(result > 0){
                out.println("\tRecord successfully added into Signup table...!");
                out.print("<p>"+"Record with login NAME " + myAuthor.getNICKNAME()
                        + " successfully log into the system..!"+"</p>");
                out.println("<p>"+"Details of record area; " + "</p>");
                out.println("<p>PASSWORRD : "+ myAuthor.getPASSWORRD() + "</p>");
            }

            
            //Step 5: Close database connection..!
            System.out.println("Step 5: Close database connection...!");
            myConnection.close();
            System.out.println("");
            System.out.println("Databse connection is closed...!");
            %>
        
    </body>
</html>
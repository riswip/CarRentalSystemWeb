<%-- 
    Document   : processSignup
    Created on : Jun 10, 2022, 3:12:56 PM
    Author     : Aspire E 14
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java"%>
<%@page import="java.sql.*"%>


<!DOCTYPE html>
<html>
    
    <body>
       
        <jsp:useBean id="myAuthor" class="com.Carrental.insertsignup" scope="request"/>
        <jsp:setProperty name="myAuthor" property="*"/>
          
        <%
            int result;
            
            Class.forName("com.mysql.jdbc.Driver");
            
            String myURL = "jdbc:mysql://localhost:3306/carrental";
            Connection myConnection = DriverManager.getConnection(myURL, "root", "admin");
            
            String sInsertQry = "INSERT INTO signup(NAME, NICKNAME, AGE, EMAIL, PHONENO, PASSWORRD, GENDER) VALUES(?,?,?,?,?,?,?,)";
            
            PreparedStatement myPS = myConnection.prepareStatement(sInsertQry);
                    
            myPS.setString(1, myAuthor.getNAME());
            myPS.setString(2, myAuthor.getNICKNAME());
            myPS.setString(3, myAuthor.getAGE());
            myPS.setString(4, myAuthor.getEMAIL());
            myPS.setString(5, myAuthor.getPHONENO());
            myPS.setString(6, myAuthor.getPASSWORRD());
            myPS.setString(7, myAuthor.getGENDER());
            

            result = myPS.executeUpdate();
            
            if(result > 0){
                out.println("\tRecord successfully added into Signup table...!");
                out.print("<p>"+"Record with signup NAME " + myAuthor.getNAME()
                        + " successfully created..!"+"</p>");
                out.println("<p>"+"Details of record area; " + "</p>");
                out.println("<p>NICKNAME : "+ myAuthor.getNICKNAME() + "</p>");
                out.println("<p>AGE: "+ myAuthor.getAGE() + "</p>");
                out.println("<p>EMAIL : "+ myAuthor.getEMAIL() + "</p>");
                out.println("<p>PHONENO : "+ myAuthor.getPHONENO() + "</p>");
                out.println("<p>PASSWORRD : "+ myAuthor.getPASSWORRD() + "</p>");
                out.println("<p>GENDER : "+ myAuthor.getGENDER() + "</p>");
            }

            
            //Step 5: Close database connection..!
            System.out.println("Step 5: Close database connection...!");
            myConnection.close();
            System.out.println("");
            System.out.println("Databse connection is closed...!");
            %>
        
    </body>
</html>
<%-- 
    Document   : SignUp.jsp
    Created on : Dec 23, 2015, 2:29:34 PM
    Author     : mOOn
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%Class.forName("com.mysql.jdbc.Driver");%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>add movie</title>
    </head>
    <body>
       <% 
        String url="jdbc:mysql://localhost:3306/movierental";
        String user = "root";
        String password= "" ;       
        Connection con=null;
        Statement st = null;
        ResultSet RS = null;
        String moviename = request.getParameter("moviename");
        String moviecategory = request.getParameter("moviecategory");
        String movieyear = request.getParameter("movieyear");
        
               con = DriverManager.getConnection(url, user, password);
               st = con.createStatement();
      int x=st.executeUpdate("Insert Into `movierental`.`movies` (MovieName,Category,MovieYear) values ('" +moviename + "','" +  moviecategory + "'," + Integer.parseInt(movieyear) + ");");
                           if(x!=0)
                           {
                               out.print("the Movie"+moviename+"has been added successfully");
                           }
                           else
                           {
                              out.print("Failed to add"+moviename); 
                           }
                       
                %>
    </body>
</html>

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
        <title>SignUp page</title>
    </head>
    <body>
       <% 
        String newmoviename = request.getParameter("newmoviename");
        String newmoviecategory = request.getParameter("newmoviecategory");
        String newmovieyear = request.getParameter("newmovieyear");
         String movieKey = request.getSession().getAttribute("movie").toString();
         
         
        String url="jdbc:mysql://localhost:3306/movierental";
        String user = "root";
        String password= "" ;       
        Connection con=null;
        Statement st = null;
        ResultSet RS = null;
        
        
            con = DriverManager.getConnection(url, user, password);
            st = con.createStatement();
           st.executeUpdate ("UPDATE `movierental`.`movies` SET `MovieName` = '"+newmoviename+"' , `Category` = '"+newmoviecategory+"'   WHERE `MovieName` = '"+movieKey+"'");
          //  st.executeUpdate("update movies set MovieName='"+newmoviename+"' and Category='"+newmoviecategory+"' and MovieYear="+Integer.parseInt(newmovieyear) +" where MovieName='"+movieKey+"'") ;
                %>
    </body>
</html>

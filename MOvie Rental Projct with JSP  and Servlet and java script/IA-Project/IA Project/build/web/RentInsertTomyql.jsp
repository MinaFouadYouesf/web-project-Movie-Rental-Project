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
            String uname = session.getAttribute("user").toString();
            String RentDate = request.getParameter("rentdate");
            String ReturnDate = request.getParameter("returndate");
            String arr[] = (String[]) request.getSession().getAttribute("MOVIE");
            String url = "jdbc:mysql://localhost:3306/movierental";
            String user = "root";
            String password = "";
            Connection con = null;
            Statement st = null;
            ResultSet RS = null;

            con = DriverManager.getConnection(url, user, password);
            st = con.createStatement();

            //st.executeUpdate("Insert Into `movierental`.`user` (Username,Pass,AccountNum) values ('" +Uname + "','" +  pass + "'," + Integer.parseInt(AccountNum) + ");");
            st.executeUpdate("Insert Into `movierental`.`rentedmovies` (Username,MovieName,RentDate,ReturnDate,Flag) values ('" + uname + "','furyyy'," + Integer.parseInt(RentDate) + "," + Integer.parseInt(ReturnDate) + ",'1');");

            
        %>
    </body>
</html>

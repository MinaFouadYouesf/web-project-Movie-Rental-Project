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
String Message = request.getParameter("comment");
         String uname=session.getAttribute("name").toString();
           String Aname=session.getAttribute("AdminID").toString();
           out.print(Aname);
        String url="jdbc:mysql://localhost:3306/movierental";
        String user = "root";
        String password= "" ;       
        Connection con=null;
        Statement st = null;
        ResultSet RS = null;
       
        
               con = DriverManager.getConnection(url, user, password);
               st = con.createStatement();
      int x=st.executeUpdate("Insert Into `movierental`.`mails` (Username,AdminId,Message) values ('" +uname + "','" +  Aname + "','" + Message + "');");
                         
                       
                %>
    </body>
</html>

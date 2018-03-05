<%-- 
    Name :    Mina Fouad Youesf Rezk.
       ID:    20120416
    Gruop:    IS_DS 1
--%>


<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%Class.forName("com.mysql.jdbc.Driver").newInstance();%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1></h1>
        <%
            try {
               
                String userName =session.getAttribute("user").toString().trim();
                        
                String movieName = session.getAttribute("MovieName").toString().trim();
                //out.print(userName);
                // out.print(movieName);
               String url = "jdbc:mysql://localhost:3306/movierental";
                String user = "root";
                String password = "";
                Connection con = null;
                Statement st = null;
                ResultSet RS = null;

                con = DriverManager.getConnection(url, user, password);
                st = con.createStatement();
              //  st.executeUpdate("DELETE FROM note WHERE noteName='" + value + "'");
      //  st.executeUpdate("DELETE  FROM `movierental`.`rentedmovies` where MovieName='"+movieName+"' ',' Username='"+userName+"'");
             ///   RS = st.executeQuery("DELETE FROM orders WHERE id_users = 1 AND id_product = 2");
 st.executeUpdate ("DELETE FROM `movierental`.`rentedmovies`  WHERE `Username` = '"+userName+"' and  `MovieName` = '"+movieName+"' ");
  
              ///  "SELECT SSN ,password FROM `miniuniversity`.`student`"+" where  SSN ="+ssn+" and password="+pass+" ");

            } catch (Exception cnfe) {
                System.err.print("exception" + cnfe);
            }
        %>
    </body>
</html>

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
                String Category = request.getParameter("serchname");
               
                String url = "jdbc:mysql://localhost:3306/movierental";
                String user = "root";
                String password = "";
                Connection con = null;
                Statement st = null;
                ResultSet RS = null;

                con = DriverManager.getConnection(url, user, password);
                st = con.createStatement();
                RS = st.executeQuery("SELECT * FROM `movierental`.`movies`");

                int x = 0;
                while (RS.next()) {
                  
                    if (RS.getString("Category").equals(Category)) {
                        %>
                      
                        <br></br><%=" MovieName- "+RS.getString("MovieName")+"......... MovieYear:- "+RS.getString("MovieYear")%><br></br>
                        
                        
                        <%
                    }

                }
               

            } catch (Exception cnfe) {
                System.err.print("exception" + cnfe);
            }
        %>
    </body>
</html>

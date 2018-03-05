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
                String ID = request.getParameter("username");
                String Apass = request.getParameter("password");
                out.print(ID);
                String url = "jdbc:mysql://localhost:3306/movierental";
                String user = "root";
                String password = "";
                Connection con = null;
                Statement st = null;
                ResultSet RS = null;

                con = DriverManager.getConnection(url, user, password);
                st = con.createStatement();
                RS = st.executeQuery("SELECT * FROM `movierental`.`user`");
                int x = 0;
                while (RS.next()) {

                    if (RS.getString("Username").equals(ID) && RS.getString("Pass").equals(Apass)) {
                        out.print(RS.getString("Username") + "-");
                        out.print(RS.getString("Pass") + "-");
                        session.setAttribute("user", RS.getString("Username"));
                        session.setAttribute("passWord", RS.getString("Pass"));
                        response.sendRedirect("userhomepage.jsp");
                        x = 1;
                    }

                }
                if (x == 0) {
                    out.println("Invalid password <a href='userlogin.html'>try again</a>");

                }

            } catch (Exception cnfe) {
                System.err.print("exception" + cnfe);
            }
        %>
    </body>
</html>
3
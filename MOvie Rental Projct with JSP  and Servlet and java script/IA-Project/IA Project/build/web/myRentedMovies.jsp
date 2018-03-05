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
        
         <script src="myScript.js"></script>
    </head>
     <body>
        <h1></h1>
        <%
            String uname = session.getAttribute("user").toString();
            try {

                String url = "jdbc:mysql://localhost:3306/movierental";
                String user = "root";
                String password = "";
                Connection con = null;
                Statement st = null;
                ResultSet RS = null;

                con = DriverManager.getConnection(url, user, password);
                st = con.createStatement();

                RS = st.executeQuery("SELECT * FROM `movierental`.`rentedmovies`");

                //  RS=st.executeQuery("SELECT * FROM `movierental`.`rentedmovies`"+" where  SSN ="+uname+"");
                int x = 0;
        %>
        <form name="form1" action="RturnAndExtend.jsp" method="get">  

            <table  border = "3">
                <tbody>
                    <tr>
                        <td>
                            <%="MovieName"%>
                        </td>
                        <td>
                            <%="Returndate"%> 
                        </td>
                        <td>
                            <%="RentDate"%>   
                        </td>
                         <td>
                            <%="mark"%>   
                        </td>
                    </tr>
                    <%
                    int i=0;
                        while (RS.next()) {

                            
                            if (RS.getString("Username").equals(uname)) {
                                 
                    %>

                    <tr>
                        <td>
                            <%= RS.getString("MovieName")%>
                        </td>
                        <td>
                            <%= RS.getString("Returndate")%> 
                        </td>
                        <td>
                            <%= RS.getString("RentDate")%>   
                        </td>
                         <td>
                             <input type="checkbox" name="insert" value="<%= RS.getString("Returndate")+"/"+RS.getString("MovieName")%> "  onclick='chkcontrol(<%=i++%>)' />  
                        </td>
                    </tr>

                    <%
                    
                                }

                            }

                        } catch (Exception cnfe) {
                            System.err.print("exception" + cnfe);
                        }
                    %>
                </tbody>
            </table> 
                <input type="submit" name="modify"  value="Modify"/>
        </form>
    </body>
</html>

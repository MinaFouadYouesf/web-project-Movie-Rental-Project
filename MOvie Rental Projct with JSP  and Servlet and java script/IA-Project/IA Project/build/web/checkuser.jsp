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
         <script src="myScript.js"></script>
        
    </head>
    <body>
        <h1></h1>
        <%
            try {

                String url = "jdbc:mysql://localhost:3306/movierental";
                String user = "root";
                String password = "";
                Connection con = null;
                Statement st = null;
                ResultSet RS = null;

                con = DriverManager.getConnection(url, user, password);
                st = con.createStatement();
                //   RS=st.executeQuery("SELECT AdminID ,Pass FROM `movierental`.`admin`"+" where  AdminID ="+ID+"");
                RS = st.executeQuery("SELECT * FROM `movierental`.`rentedmovies`");
                int i = 0;
//          
%>
        <h1> All Movies </h1>
        <table  border = "3">
            <tbody>
                <tr>
                    <td>
                        <%="Username"%>
                    </td>
                    <td>
                        <%="MovieName"%>
                    </td>
                    <td>
                        <%="Rentdate"%>
                    </td>
                    <td>
                        <%="Returndate"%>
                    </td>
                </tr>
            <form name="form1" action="sendmail.jsp" method="get" >  
                <%
                    while (RS.next()) {

                        String Username = RS.getString("Username");
                        String Mname = RS.getString("MovieName");
                        String RentDate = RS.getString("RentDate");
                        String ReturnDate = RS.getString("ReturnDate");
                        //   String RentDate = RS.getDate("RentDate")+"";
                        // / String ReturnDate = RS.getDate("ReturnDate")+"" 
                        //  Date RentDate = RS.getDate("RentDate");
                        //  Date ReturnDate = RS.getDate("ReturnDate");
                        ///ReturnDate.getTime();

                %>
                <tr>
                    <td>

                        <%=Username%>
                    </td>

                    <td>

                        <%=Mname%>
                    </td>

                    <td>

                        <%=RentDate%>
                    </td>
                    <td>

                        <%=ReturnDate%>
                    </td>

                    <td>
                        <input type="checkbox"  name="insert" value="

                               <%=Username%> " onclick='chkcontrol(<%=i++%>)'/>
                    </td>


                </tr>
                <%

                        }
                    } catch (Exception cnfe) {
                        System.err.print("exception" + cnfe);
                    }
                %>


                </tbody>
        </table>  
        <input type="submit" name="send"value="SendMail" />
    </form>


</body>
</html>

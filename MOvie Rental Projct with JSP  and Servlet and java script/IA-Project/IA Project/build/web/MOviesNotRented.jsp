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

String url="jdbc:mysql://localhost:3306/movierental"; 
           String user = "root";
           String password= "" ;       
           Connection con=null;
           Statement st = null;
           ResultSet RS = null;
         
               con = DriverManager.getConnection(url, user, password);
               st = con.createStatement();
           
          

            RS = st.executeQuery(" SELECT MovieName  FROM `movierental`.`movies`"
                        + "where  MovieName not in (SELECT "
                        + "MovieName FROM `movierental`.`rentedmovies`);");

            int x=0;
           
            %>
            <form  action="CheckUserAccountExistance.jsp" method="get">  

            <table  border = "3">
                <tbody>
                    <tr>
                                <td>
                                    <%="MovieName"%>
                                </td>
                                <td>
                                    <%="mark"%>
                                </td>
                            </tr>
                    <%
           while(RS.next()){ 
               
                        // String s = RS.getString("AdminID");
                        // String passord=RS.getString("Pass");
                        
                         
                               %>
                            
                            <tr>
                                <td>
                                    <%= RS.getString("MovieName")%>
                                </td>
                                 <td>
                            <input type="checkbox"  name="rent" value="

                                   <%=RS.getString("MovieName")%>
                                   "/>
                        </td>
                            </tr>
                               
                                <%
                           
                          
                     
                }
         
           
           
           }
           catch(Exception cnfe){
               System.err.print("exception"+cnfe);
           } 
         

        %>
        </tbody>
            </table>  
        <input type="submit" name="submit" value="submit"/>
           </form>
    </body>
</html>

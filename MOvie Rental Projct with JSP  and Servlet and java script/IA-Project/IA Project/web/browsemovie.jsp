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
            ResultSet RSS = null;
         // /System.out.print(ID);
         //  System.out.print(Apass);
               con = DriverManager.getConnection(url, user, password);
               st = con.createStatement();
            //   RS=st.executeQuery("SELECT AdminID ,Pass FROM `movierental`.`admin`"+" where  AdminID ="+ID+"");
           RS=st.executeQuery("SELECT * FROM `movierental`.`movies`");
           
//          
           %>
           <h1> All Movies </h1>
            <table  border = "3">
                <tbody>
                    <tr>
                        <td>
                             <%="MovieName"%>
                        </td>
                         <td>
                             <%="Category"%>
                        </td>
                         <td>
                             <%="MovieYear"%>
                        </td>
                    </tr>
           <%
           while(RS.next()){ 
               
                        String Mname = RS.getString("MovieName");
                        String categry=RS.getString("Category");
                        String year=RS.getString("MovieYear");
                              
                         %>
                         <tr>

                        <td>

                            <%=Mname%>
                        </td>
                        <td>
                            <%=categry%>
                        </td>
                        <td>
                            <%=year%>
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
           
      
      
      
      
      
      
      
     
    <%  
      
      try {

String url="jdbc:mysql://localhost:3306/movierental"; 
           String user = "root";
           String password= "" ;       
           Connection con=null;
           Statement st = null;
         
            ResultSet RSS = null;
        
               con = DriverManager.getConnection(url, user, password);
               st = con.createStatement();
          
          
           RSS=st.executeQuery("SELECT * FROM `movierental`.`rentedmovies`");
//          
           %>
           <h1> Rented Movies </h1>
            <table  border = "3">
                <tbody>
                    <tr>
                        <td>
                             <%="MovieName"%>
                        </td>
                        
                    </tr>
           <%
           while(RSS.next()){ 
               
                        String Mname = RSS.getString("MovieName");
                       
                              
                         %>
                         <tr>

                        <td>

                            <%=Mname%>
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

      
      
      
      
    </body>
</html>

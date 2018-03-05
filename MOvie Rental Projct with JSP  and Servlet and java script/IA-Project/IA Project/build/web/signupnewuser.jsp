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
        String url="jdbc:mysql://localhost:3306/movierental";
        String user = "root";
        String password= "" ;       
        Connection con=null;
        Statement st = null;
        ResultSet RS = null;
        String Uname = request.getParameter("username");
        String pass = request.getParameter("password");
        String AccountNum = request.getParameter("accountnum");
        
               con = DriverManager.getConnection(url, user, password);
               st = con.createStatement();
               RS=st.executeQuery("SELECT * FROM `movierental`.`user`");
          //  st.executeUpdate("Insert Into `movierental`.`user` (Username,Pass,AccountNum) values ('" +Uname + "','" +  pass + "'," + Integer.parseInt(AccountNum) + ");");
   
      int x=0;
           while(RS.next()){ 
              
                          if(RS.getString("Username").equals(Uname))
                           {
                               
                               response.sendRedirect("UserIsExist.jsp");
                                x=1;
                           }
                          
                     
                }
          if(x==0)
          {
              st.executeUpdate("Insert Into `movierental`.`user` (Username,Pass,AccountNum) values ('" +Uname + "','" +  pass + "'," + Integer.parseInt(AccountNum) + ");");
    
              response.sendRedirect("SignUpSuccess.jsp");
          }
                %>
    </body>
</html>

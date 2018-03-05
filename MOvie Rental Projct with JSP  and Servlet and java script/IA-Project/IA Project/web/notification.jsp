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

    String uname=session.getAttribute("user").toString();
String url="jdbc:mysql://localhost:3306/movierental"; 
           String user = "root";
           String password= "" ;       
           Connection con=null;
           Statement st = null;
           ResultSet RS = null;
           
         
               con = DriverManager.getConnection(url, user, password);
               st = con.createStatement();
           
           RS=st.executeQuery("SELECT * FROM `movierental`.`mails`");
//           HttpSession session=request.getSession(true);
            //   String s = RS.getString("AdminID");
           //      String passord=RS.getString("Pass");
          //       out.print(s);
            int x=0;
           while(RS.next()){ 
               
                        
            
               
                         if(RS.getString("Username").equals(uname)&&(RS.getString("Message")).trim()!=null) {
                               x=1;  
                                  out.println(RS.getString("Message"));
                         }    
                          
                                
                           
                     
                }
          if(x==0)
          {
              out.print("there is no messages");
              
          }
          
           
           
           }
           catch(Exception cnfe){
               System.err.print("exception"+cnfe);
           } 
        %>
        <%=request.getAttribute("error_message")%>
    </body>
</html>

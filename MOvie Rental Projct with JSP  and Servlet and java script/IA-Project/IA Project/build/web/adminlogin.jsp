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
String ID=request.getParameter("username");
String Apass=request.getParameter("password");
String url="jdbc:mysql://localhost:3306/movierental"; 
           String user = "root";
           String password= "" ;       
           Connection con=null;
           Statement st = null;
           ResultSet RS = null;
           
         // /System.out.print(ID);
         //  System.out.print(Apass);
               con = DriverManager.getConnection(url, user, password);
               st = con.createStatement();
            //   RS=st.executeQuery("SELECT AdminID ,Pass FROM `movierental`.`admin`"+" where  AdminID ="+ID+"");
           RS = st.executeQuery("SELECT * FROM `movierental`.`admin`");
//           HttpSession session=request.getSession(true);
            //   String s = RS.getString("AdminID");
           //      String passord=RS.getString("Pass");
          //       out.print(s);
            int x=0;
           while(RS.next()){ 
               //
                        // String s = RS.getString("AdminID");
                        // String passord=RS.getString("Pass");
                        
                          if(RS.getString("AdminID").equals(ID)&&RS.getString("Pass").equals(Apass))
                           {
                               out.print(RS.getString("AdminID")+"-");
                         out.print(RS.getString("Pass")+"-");
                                session.setAttribute("AdminID",RS.getString("AdminID"));
                               response.sendRedirect("adminhomepage.jsp");
                                x=1;
                           }
                          
                     
                }
          if(x==0)
          {
              out.println("Invalid password <a href='adminlogin.html'>try again</a>");
              
          }
          
           
           
           }
           catch(Exception cnfe){
               System.err.print("exception"+cnfe);
           } 
        %>
    </body>
</html>

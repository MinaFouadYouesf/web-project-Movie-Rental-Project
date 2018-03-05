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
String AccountID=request.getParameter("AcID");
 String arr[] = (String[]) request.getSession().getAttribute("MOVIE");
  for (int i = 0; i < arr.length; i++) {

               // st.executeUpdate("Insert Into user values ('mmm','2016','1001');");
                out.print(arr[i]);
                out.print(uname);
                out.print(AccountID);
            }

String url="jdbc:mysql://localhost:3306/movierental"; 
           String user = "root";
           String password= "" ;       
           Connection con=null;
           Statement st = null;
           ResultSet RS = null;
       
               con = DriverManager.getConnection(url, user, password);
               st = con.createStatement();
           
           RS=st.executeQuery("SELECT * FROM `movierental`.`user`");
        
            int x=0;
           while(RS.next()){ 
               
                          if(RS.getString("Username").equals(uname)&&RS.getString("AccountNum").equals(AccountID))
                           {
                                x=1;
                             %>
     <form  id="s" name ="signup" action="RentInsertTomyql.jsp" method="POST">
    <b>Rent Date <b> :<input type="date" name="rentdate"  value=""> </br> </br>
    <b>Return Date  <b>:<input type="date" name="returndate" > </br></br>
    <button id="said" class="k" name="signup" > Confirm Rent </button></br>

</form>
                               
                               
                               <%
                                
                           }
                          
                     
                }
          if(x==0)
          {
              response.sendRedirect("ErrorAccountNotExist.jsp");
              
          }
          
           
           
           }
           catch(Exception cnfe){
               System.err.print("exception"+cnfe);
           } 
        %>
    </body>
</html>

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
     String MOvies[] = request.getParameterValues("rent");
    // String uname=session.getAttribute("user").toString();
    
     session.setAttribute("MOVIE", MOvies);
     
     out.println("Movies You selected to Rent :- ");
     
     for(int i=0;i<MOvies.length;i++)
     {
         %>
         <br> <%="Movie Name"+(i+1)+" :-    "+MOvies[i]%> </br> </br>
          <%
       
     
     }
      out.println(".................................................................................................");
     %>
     <form id="ss" name="ssss" action="RentPage.jsp" method="post">
         Account Number<input type="text" name="AcID"value="" />
         <input type="submit" name="submit" value="pay"/>
         </form>
     
     <%
           }
           catch(Exception cnfe){
               System.err.print("exception"+cnfe);
           } 
        %>
    </body>
</html>

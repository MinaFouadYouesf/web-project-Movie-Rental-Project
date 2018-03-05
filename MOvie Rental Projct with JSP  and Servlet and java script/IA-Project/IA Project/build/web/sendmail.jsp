<%-- 
    Document   : sendmail
    Created on : Dec 23, 2015, 5:49:23 PM
    Author     : mOOn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String name = request.getParameter("insert");
       session.setAttribute("name", name);
     
        %>
       
        <marquee direction="right" behavior="alternate">
            <h1 id="demo">  send Message</h1></marquee>
   
        <form name="usrform" action="send1.jsp" method="get">
             <textarea rows="4" cols="50" name="comment" >
      اكتب الرسالة هنا...</textarea>
             
            <input type="submit" name="Message"value="sendMessage"/> 
           

        </form>
         
 
    </body>
</html>

<%-- 
    Name :    Mina Fouad Youesf Rezk.
       ID:    20120416
    Gruop:    IS_DS 1
--%>


<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%Class.forName("com.mysql.jdbc.Driver").newInstance();%>
<%@page import="java.io.InputStream"%>
<%@page import="java.util.StringTokenizer"%>
<%@page import=" java.io.IOException"%>
<%@page import=" java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1></h1>
        <%

           
            String store = "";
            String returnDate = "";
            String movieName = "";
            List<String> result = new ArrayList<String>();
            String MoviePlusReturnDate = request.getParameter("insert");
            out.print(MoviePlusReturnDate);

            StringTokenizer token = new StringTokenizer(MoviePlusReturnDate, "/");
            while (token.hasMoreElements()) {
                store += token.nextElement();

                result.add(store);
                store = "";

            }
            returnDate = result.get(0).trim();
            movieName = result.get(1).trim();
            out.print(returnDate);
               session.setAttribute("MovieName",movieName);
              session.setAttribute("returnDate", returnDate);
                                
        %>
        <%="MOvie Name :- " + movieName%>
        <form  action="Extend.jsp" method="get">  

            <input type="date"name="extend" value="<%=returnDate%>"/>
            <input type="submit"name="submit" value="extend"/>
        </form>


        <form  action="Return.jsp" method="get">  


            <input type="submit"name="submit" value="return"/>
        </form>






    </body>
</html>

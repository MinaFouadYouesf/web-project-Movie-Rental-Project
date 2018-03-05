<%-- 
    Document   : SearchByMovieName
    Created on : Dec 25, 2015, 10:28:09 PM
    Author     : mOOn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <style>
body {
    background-image: url("gradient_bg.png");
    background-repeat: repeat-x;
}
</style>
    </head>
    <body>
      <form  id="s" action ="SerachByYearSQL.jsp" name="id" method="POST">
   
        
          <input type="search" name="serchname" value="Serach"/>
          <input type="submit" name="submit" value="Search"/>
</form>
    </body>
</html>

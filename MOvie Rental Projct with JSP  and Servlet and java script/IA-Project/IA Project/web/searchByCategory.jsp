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
        <title>JSP Page</title>
        <style>
     h1{
                
    color:#00F;
    text-align: center;
    font-size: 20px;
        }
    img {
    position: absolute;
    left: 0px;
    top: 0px;
    z-index: -1;
 }
    body {
    background-image: url("save.jpg");
   
  background-color: red;
}
 


</style>
    </head>
    <div></div>
    <body>
        <h1>
            Search for Movie by Category
        </h1>
          <img id="u1_img" class="img " src="resources/images/save.jpg"/>
        
      <form  id="s" action ="SerachByCategorySQL.jsp" name="id" method="POST">
   
        
          <input type="search" name="serchname" value="Serach"/>
          <input type="submit" name="submit" value="Search"/>
</form>
    </body>
</html>

<!DOCTYPE html>
<html>
<head>
<style>
.center {
	margin-left:auto;
	margin-right: auto;
	margin-top:20%;
	margin-right:30%;
	width: 30%;
	background-color: #F03;
	background-position: center;
	
}
#said{
	background-color: #00F;
	color:white;
	margin-top:10%;
	margin-left:80%;
	width: 20%;
		
}
input {
	width:180px;
	clear:left;
	text-align:right;
	padding-right:10px;
	float:right;
	background-color: #FFF;
}


#s {
	background-color: #FFF;
	font-weight: bold;
}
#bar {
	background-color: #00F;
	color: #FFF;
}
#bar {
	font-weight: bold;
	font-size: 24px;
}
.center #s {
	font-size: 18px;
}
.k {
	font-weight: normal;
}
.center #s #said {
	font-weight: bold;
}
</style>


</head>
<body>
      <%
        String uname=session.getAttribute("user").toString();
     
        String passWord=session.getAttribute("passWord").toString();
       %>

    <div id="bar"><span id="bar"> </span> <h1> Update Profile</h1> </div>


<div class="center">
<form  id="s" name ="signup" action="updateprofile.jsp" method="POST">
    <b>User Name <b> :<input type="text" name="username" value="<%=uname%>" > </br> </br></br>
            <b>Password  <b>:<input type="password" name="password"  value="<%=passWord%>"> </br></br></br>
<b>Confirm Password  <b>:<input type="password" name="confirmpassword" > </br></br></br>
 
<button id="said" class="k" name="signup" >Update </button>
</form>
</div>
</body>
</html>
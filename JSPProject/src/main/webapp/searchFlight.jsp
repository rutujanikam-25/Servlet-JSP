<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="model.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body{
background-image:url('flight1.jpg'); 
  background-repeat: no-repeat;
  background-size: cover;
}
#myId{
text-align:center;
color:Black;
}
#myId2{
text-align:center;
color:white;
}
<% User userObj;%>
<% userObj=(User)session.getAttribute("user-key");%>
</style>
</head>
<center>
<body>
<h1 id="myId">Welcome <%=userObj.getUserName() %></h1>



<h1><font color='white'>Welcome to our Flight Service!!!!</font></h1>
<form action='viewFlight.jsp' mehod='get'>
<label for='source Location'>Enter Source</label>
<input type='text' name='t1' size='5'><br>
<label for='destination Location'>Enter Destination</label>
<input type='text' name='t2' size='5'><br>
<label for='journey Date'>Enter Journey Date</label>
<input type='date' name='t3' size='5'><br>
<input type='submit' value='search'>
<p id="myId2"><a href='Logout.jsp'>LogOut....</a></p>
</form>
</center>
</body>
</html>
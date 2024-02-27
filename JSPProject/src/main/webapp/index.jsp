<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3><font color='blue'>Todays Date is :<%=new Date() %></font></h3>
<form action="UserReg.jsp" method="post">
<label for="Name">User Name</label>
<input type="text" name="t1" required><br>
<label for="password">User Password</label>
<input type="text" name="t2" pattern='[0-9A-Z#$@]{3,6}' required><br>
<label for="Phone">User Phone</label>
<input type="text" name="t3" required><br>
<input type='submit' value='SignUp'>
</form>
</body>
</html>
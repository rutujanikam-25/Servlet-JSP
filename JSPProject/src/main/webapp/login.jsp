<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="LoginServlet" method='post'>
<label for="UserName">Enter User Name</label>
<input type="text" name="t1"><br>
<label for="password">Enter User Password</label>
<input type="password" name="t2"><br>

<input type="submit" value="Login"><br>

</form>
<a href="index.jsp" > New USer</a>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>This is from second Jsp Page </h3>
<jsp:useBean id="obj" class="myPack.User"  scope="session"></jsp:useBean>
<jsp:getProperty property="userName" name="obj"/>
<jsp:getProperty property="userPassword" name="obj"/>
</body>
</html>
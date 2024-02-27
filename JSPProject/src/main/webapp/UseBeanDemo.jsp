<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="obj" class="myPack.User"  scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="obj"/>
<jsp:getProperty property="userName" name="obj"/>
<jsp:getProperty property="userPassword" name="obj"/>


</body>
</html>
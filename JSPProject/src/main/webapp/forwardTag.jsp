<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:forward page="calculator.jsp">
<jsp:param value="100" name="t1"/>
<jsp:param value="0" name="t2"/>
</jsp:forward>
</body>
</html>
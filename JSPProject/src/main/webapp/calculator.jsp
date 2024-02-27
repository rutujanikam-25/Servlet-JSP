<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page errorPage="globalError.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int num1=Integer.parseInt(request.getParameter("t1"));
int num2=Integer.parseInt(request.getParameter("t2"));
int div =num1/num2;
out.println("division of Two numbers is"+ " "+div);
%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="model.* ,dao.* ,service.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!--  Page declaration tag -->
<%
String userName;
String password;
long phone;
%>
<!-- writing java code in scriptlet tag -->
<%
userName=request.getParameter("t1");
password=request.getParameter("t2");
phone=Long.parseLong(request.getParameter("t3"));
UseDao dao=new UseDao();
User user=new User();
user.setUserName(userName);
user.setPassword(password);
user.setPhone(phone);
User userObj=dao.signUp(user);
if(userObj!=null){
	out.println(userObj.getUserName()+"  Registered successfully");
}else{
	out.println("not able to register");
}


//out.println("user details: "+userName+"  "+password+"   "+phone);
%>
<a href="login.jsp"> login</a>
</body>
</html>
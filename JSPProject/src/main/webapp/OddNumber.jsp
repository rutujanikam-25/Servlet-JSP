<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="java.util.*" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
table,tr,td{
border:1px solid black;
 width:10%;
 border-collapse:collapse;
 text-align:center;
}
</style>
</head>
<body>


<%
request.getSession(false);
ArrayList<Integer> list=(ArrayList<Integer>)session.getAttribute("list1");

 %>
<table>
<tr >Odd Number</tr>

<%Iterator itr=list.iterator();
  while(itr.hasNext()){
%>
<tr>
<td><%=itr.next() %></td>
<%} %>
</tr>
</table>
</body>
</html>
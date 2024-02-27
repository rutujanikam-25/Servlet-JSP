<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import=" model.*,dao.* " %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% User userObj;%>
<% userObj=(User)session.getAttribute("user-key");%>
<h1 id="myId">Welcome <%=userObj.getUserName() %></h1>
<p id="myId2"><a href='Logout.jsp'>LogOut....</a></p>

<% int id=Integer.parseInt(request.getParameter("pname")); 
   UseDao dao=new UseDao();
   Flight flight=dao.getFlightById(id);
   double price=flight.getfPrice()*0.12+500.00;
%>
<h1><font color='blue'>Your booking details is</font></h1>
<h2><font color='green'>You are looking for :<%=flight.getFlightName() %> flight</font></h2>
<h2><font color='green'>your travelling to :<%=flight.getfDest() %>&nbsp; &nbsp; from:<%=flight.getfSrc() %></font></h2>
<h3><font color='green'>your ticket price will be:<%=price%></font></h3>
<a href='finalBooking.jsp?p1=<%=flight.getFlightName()%>
&p2=<%=flight.getfSrc() %>
&p3=<%=flight.getfDest() %>
&p4=<%=price%>'> <input type='button' value='conmfirm'> </a>

</body>
</html>
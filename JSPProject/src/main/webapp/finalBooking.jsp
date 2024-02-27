<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import='java.time.*,java.sql.*,utility.*,model.*,dao.*,java.io.*,java.math.*' %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>

<!-- Page declaration tag -->

     <%!
     String FlightName;
     String Source;
     String Destination;
     double price;
     String PRN;
     String str;
     int a;
     
     %>
     
     <% User userObj;%>
    <% userObj =(User)session.getAttribute("user-key");%>
     <!-- writing java code in scriptlet tag -->
     <%
     FlightName =request.getParameter("p1");
     Source=request.getParameter("p2");
     Destination=request.getParameter("p3");
     price=Double.parseDouble(request.getParameter("p4"));
      
      
     String s1=Source.substring(0,2);
     String s2=Destination.substring(0,2);
     String s3=FlightName.substring(0,2);
     String pw=userObj.getPassword();
     String s4=pw.substring(2,5);
     String finalPassword=s1.concat(s2).concat(s3).concat(s4).toUpperCase();
     UseDao dao=new UseDao();
     BookFlight flight=new BookFlight();
     flight.setBookingPNR(finalPassword);
     flight.setSourceAirport(Source);
     flight.setDestAirport(Destination);
     flight.setFlightPrice(price);
     flight.setFlightName(FlightName);
     flight.setUserName(userObj.getUserName());
     
     BookFlight bkFlight=dao.addFlight(flight);
     if(bkFlight!=null)
     {
     out.println("<h1>***Ticket***</h1>");
     out.println("<p><font color='green'>PRN: "+flight.getBookingPNR()+"</font><p><br>");
     out.println("<p><font color='green'>Source Airport: "+flight.getSourceAirport()+"</font><p><br>");
     out.println("<p><font color='green'>Destination Airport: "+flight.getDestAirport()+"</font><p><br>");
     out.println("<p><font color='green'>Passenger Name: "+flight.getUserName()+"</font><p><br>");
     out.println("<p><font color='green'>Ticket Price: "+flight.getFlightPrice()+"</font><p><br>");
     out.println("<p><font color='green'>Airbus type: "+flight.getFlightName()+"</font><p><br>");
     }
     else
     {
    	 out.println("<p><font color='green'>Not able to Book Flight</font><p><br>");
     }
      
     %>
    <!--  <p>Flight Name is: <%=FlightName%> </p>
     <p>Flight Source is: <%=Source %></p> 
      <p>Flight Destination is: <%=Destination%></p>
      <p>Flight Price is: <%=price%></p>
      
      <p>Flight PRN is: <%=finalPassword %></p>
      -->
     
      <p id="myId2"><a href='Logout.jsp'>Logout...</a> </p>
      </center>
</body>
</html>
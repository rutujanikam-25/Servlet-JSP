<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import='java.time.*, java.sql.*,utility.*,model.*' %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body{
background-image:url('flight1.jpg'); 

  background-repeat: no-repeat;
  background-size: cover;
  color:white;
 
}
#myId{
text-align:right;
color:red;
}
#myId2{
text-align:left;

}
</style>
</head>
<body>
<%! String source_airport;
String dest_airport;
LocalDate fly_date;
int id=0;
String flight_name=null;
%>
<% User userObj;%>
<% userObj=(User)session.getAttribute("user-key");%>
<h3 id="myId">Welcome <%=userObj.getUserName() %></h3>

<table cellpadding='5' cellspacing='5'>
<thead>
<th>ID</th>
<th>NAME</th>
<th>SOURCE</th>
<th>DEST</th>
<th>DATE</th>
<th>PRICE</th>
<th>BOOK</th>
</thead>

<%
source_airport=request.getParameter("t1");
dest_airport=request.getParameter("t2");
fly_date=LocalDate.parse(request.getParameter("t3"));
Connection con =DBUtil.getConnect();
String fetchQuery="select * from flightInfo where flight_src=? and flight_dest=? and flight_date=?";
PreparedStatement ps=con.prepareStatement(fetchQuery);
ps.setString(1, source_airport);
ps.setString(2, dest_airport);
java.sql.Date d=java.sql.Date.valueOf(fly_date);
ps.setDate(3,d);
ResultSet rs=ps.executeQuery();
while(rs.next()){
	id=rs.getInt(1);
	flight_name=rs.getString(2);
	String src=rs.getString(3);
	String dest=rs.getString(4);
	java.sql.Date fly_Date=rs.getDate(5);
	double price=rs.getDouble(6);
	

%>
<tr>
<td><%=id %></td>
<td><%=flight_name %></td>
<td><%=src %></td>
<td><%=dest%></td>
<td><%=fly_Date %></td>
<td><%=price %></td>
<td><a href='Book.jsp?pname=<%=id%>'><img src="book.jpg" height='30' width='70'></a></td>
</tr>
<%} %>
</table>


<p id="myId2"><a href='Logout.jsp'>LogOut....</a></p>






</body>
</html>
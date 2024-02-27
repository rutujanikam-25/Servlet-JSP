<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import='java.time.*,java.sql.*,utility.*,model.*' %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
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

Connection con=DBUtil.getConnect();
String fetchQuery="select * from flightinfo";
PreparedStatement ps=con.prepareStatement(fetchQuery);


   ResultSet rs=ps.executeQuery();
   while(rs.next())
   {
	 int   id=rs.getInt(1);
	  String flight_name=rs.getString(2);
	 String src=rs.getString(3);
	 String dest=rs.getString(4);
	 java.sql.Date fly_Daye=rs.getDate(5);
	 double price=rs.getDouble(6);
	 %>
	 <tr>
	 <td><%=id %></td>
	  <td><%=flight_name %></td>
	   <td><%=src %></td>
	    <td><%=dest %></td>
	     <td><%=fly_Daye %></td>
	     <td><%=price %></td>
	    
	     </tr>
	 <%  } %>
</table>


</body>
</html>
</body>
</html>
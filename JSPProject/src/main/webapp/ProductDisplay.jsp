<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.time.*,java.sql.*,utility.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
table,tr,td,th{
border:1px solid black;
 width:20%;
 border-collapse:collapse;
 text-align:center;
}
</style>

</head>

<body>
<table cellpadding='5' cellspacing='5'>
	 <thead>
	 <th>ID</th>
	 <th>NAME</th>
	 <th>MFD</th>
	 </thead> 
<%

Connection con=DBUtil.getConnect();
String fetchQuery="select * from product11";
PreparedStatement ps=con.prepareStatement(fetchQuery);


   ResultSet rs=ps.executeQuery();
   while(rs.next())
   {
	 int   id=rs.getInt(1);
	  String product_name=rs.getString(2);
	 java.sql.Date mfd=rs.getDate(3);
	
	 %>
	 <tr>
	 <td><%=id %></td>
	  <td><%=product_name %></td>
	   
	     <td><%=mfd %></td>
	    
	    
	     </tr>
	 <%  } %>
</table>

</body>
</html>
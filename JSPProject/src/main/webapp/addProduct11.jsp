<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.time.*,java.sql.*,utility.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
  int id=Integer.parseInt(request.getParameter("id"));
  String product_name=request.getParameter("name");
  String mfd = request.getParameter("date");
  Connection con=DBUtil.getConnect();
  String addQuery="insert into product11 values(?,?,?)";
  PreparedStatement ps=con.prepareStatement(addQuery);
  ps.setInt(1, id);
  ps.setString(2, product_name);
  Date sqlDate=Date.valueOf(mfd);
  ps.setDate(3, sqlDate);
  int status=ps.executeUpdate();
  if(status>0){
	  %>
	  <h1>Add successful</h1>
	  <%}else{ %>
	  <h1>no</h1>
	  <%} %>
</body>
</html>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table align="center" cellspacing="2" class="table-fill" >
      <thead align="center">
      <tr align="center">
	  <th width=""   class="text-center">Product Name</th>
	  <th width=""  class="text-center">Quantity</th>
	  <th width=""  class="text-center">Price of each</th>
	  </tr></thead>
	  <%
try{
String driver = "oracle.jdbc.OracleDriver";
String dbURL = "jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl";
String dbuser = "cpatnam";
String dbpassword = "santhosh";
Connection con = null;
PreparedStatement ps = null;
ResultSet rs = null;

Class.forName(driver);
con = DriverManager.getConnection(dbURL,dbuser,dbpassword);  

String s=request.getParameter("pname");
String p=request.getParameter("quantity");

ps = con.prepareStatement("update CART set quantity=? where pname=?");
ps.setString(1,p);
ps.setString(2,s);
ps.executeUpdate();

String id1=null,name=null,prodsize=null; 

ps = con.prepareStatement("select * from CART");
 
rs = ps.executeQuery();
while(rs.next()){
	id1=rs.getString("pname");
	name=rs.getString("quantity");
	prodsize=rs.getString("price");
%>
<tbody class="table-hover">
<tr align="center">
<td class="text-center"><%= id1 %></td>
<td class="text-center"><%= name %></td>
<td class="text-center"><%= prodsize %></td>
</tr>
</tbody>
<% 
}
rs.close();
ps.close();
con.close();
}
catch(SQLException e)
{
	System.out.println(e);	
}

%>
</table>
  <hr />
<br />

<a href="checkout.jsp">Click here</a> to check out
</body>
</html>
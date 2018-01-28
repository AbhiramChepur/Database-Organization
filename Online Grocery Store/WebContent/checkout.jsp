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
	  <th width=""  class="text-center">Price</th>
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
<h3> Changing Product quantity</h3>
 <p>Click <a href="chanproductquantity.jsp">here</a> to change the product quantity
   </p>
    <hr />
<br />
<h3> Deleting Product </h3>
 <form action="deleteproductfromcart.jsp">
 <p>Enter Productname  to remove specific product from product list.</p><input type="text" name="pname">
  <input type="submit" value="Delete" />
</form>
  <hr />
  <form method="get" action="order.jsp">
  <input type="submit" name="submit" value="order">
</form>
</body>
</html>
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
<title>Staff add and Delete</title>
</head>
<body bgcolor="#BCC167">
      <table align="center" cellspacing="2" class="table-fill" >
      <thead align="center">
      <tr align="center">
	  <th width=""   class="text-center">Product ID</th>
	  <th width=""  class="text-center">Product NAME</th>
	  <th width=""  class="text-center">Product Size</th>
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

ps = con.prepareStatement("select * from PRODUCT");
 
rs = ps.executeQuery();
while(rs.next()){
	id1=rs.getString("PRODUCT_ID");
	name=rs.getString("PNAME");
	prodsize=rs.getString("PRODUCTSIZE");
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
<h3> Adding Product </h3>
 <p>Click <a href="StaffProduct.jsp">here</a> to add new product to product list.
   </p>
    <hr />
<br />
<h3> Deleting Product </h3>
 <form action="deleteproduct.jsp">
 <p>Enter ProductID  to remove specific product from product list.</p><input type="text" name="PRODUCT_id">
  <input type="submit" value="Delete" />
</form>
  <hr />
<h3> Adding Stock to warehouse </h3>
 <p>Click <a href="StaffStock.jsp">here</a> to add new product to product list.
   </p>
</body>
</html>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>STAFFstockpage</title>
    </head>
    <body bgcolor="#6FA9C0">
       <div align="center"><h3>STAFF STOCK PAGE</h3></div><br>
       <table align="center" cellspacing="2" class="table-fill" >
      <thead align="center">
      <tr align="center">
	  <th width=""   class="text-center">Product ID</th>
	  <th width=""  class="text-center">Warehouse ID</th>
	  <th width=""  class="text-center">Quantity</th>
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

ps = con.prepareStatement("select * from STOCK");
 
rs = ps.executeQuery();
while(rs.next()){
	id1=rs.getString("PRODUCT_ID");
	name=rs.getString("WAREHOUSE_ID");
	prodsize=rs.getString("QUANTITY");
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
        <div align="center">
        <form name="myform" action="StaffStock.jsp" method="POST">
        <table>
        <tr>    
        <td>Product_ID:</td><td><input type="text" name="PRODUCT_ID"></td>  
        </tr>
        <tr>
        <td>Warehouse ID:</td>
        <td><input type="text" name="WAREHOUSE_ID"></td>
        </tr>
        <tr>
        <td>Quantity of Product :</td>
        <td><input type="text" name="QUANTITY"></td>
        </tr>
        <tr>
        <td>ADDRESS:</td>
        <td><input type="text" name="ADDRESS"></td>
        </tr>
        <tr>
        <td>Storage Capacity of Warehouse:</td>
        <td><input type="text" name="STORAGECAPACITY"></td>
        </tr>
       <tr>
  <td><input type="submit" name="lsubmit" value="submit"></td>
</tr>
        </table>     
 </form>
        </div>   
<%
try{
String driver = "oracle.jdbc.OracleDriver";
String dbURL = "jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl";
String dbuser = "cpatnam";
String dbpassword = "santhosh";
Connection con = null;
PreparedStatement ps = null;

Class.forName(driver);
con = DriverManager.getConnection(dbURL,dbuser,dbpassword);  


ps = con.prepareStatement("insert into WAREHOUSE(WAREHOUSE_ID, ADDRESS, STORAGECAPACITY) values(?,?,?)");
ps.setString(1,request.getParameter("WAREHOUSE_ID"));
ps.setString(2,request.getParameter("ADDRESS"));
ps.setString(3,request.getParameter("STORAGECAPACITY"));
ps.executeUpdate();
ps = con.prepareStatement("insert into STOCK(PRODUCT_ID, WAREHOUSE_ID, QUANTITY) values(?,?,?)");
ps.setString(1,request.getParameter("PRODUCT_ID"));
ps.setString(2,request.getParameter("WAREHOUSE_ID"));
ps.setString(3,request.getParameter("QUANTITY"));
ps.executeUpdate();
response.sendRedirect("StaffProductsView.jsp");
}
catch(SQLException e)
{
	System.out.println(e);	
}

%>
         
    </BODY>
</HTML>
       


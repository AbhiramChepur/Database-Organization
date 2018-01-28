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
	  <th width=""   class="text-center">Total price</th>
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

ps = con.prepareStatement("select sum(price) from CART");
 
rs = ps.executeQuery();
while(rs.next()){
	id1=rs.getString("sum(price)");
%>
<tbody class="table-hover">
<tr align="center">
<td class="text-center"><%= id1 %></td>
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
Enter customer id for credit card info
<form name="myform" action="selectcreditcard.jsp" method="POST">
 <table>
        <tr>    
        <td>CUSTOMER_ID:</td><td><input type="text" name="CUSTOMER_ID"></td>  
        </tr>
        <tr>
        <tr>
  <td><input type="submit" name="lsubmit" value="submit"></td>
</tr>
        </table>
       </form> 

        
        
</body>
</html>
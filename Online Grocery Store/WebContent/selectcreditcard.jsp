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
	  <th width=""   class="text-center"> SELECT CREDIT CARD</th>
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


String s=request.getParameter("CUSTOMER_ID");
String id1=null,name=null,prodsize=null; 

ps = con.prepareStatement("select CREDITCARDNO from CUSTOMERCREDITCARDINFO where CUSTOMER_ID=?");
ps.setString(1,s);
ps.executeUpdate();
rs = ps.executeQuery();
while(rs.next()){
	id1=rs.getString("CREDITCARDNO");
%>
<tbody class="table-hover">
<tr align="center">
<td class="text-center"><%= id1 %></td>
</tr>
<tr><td><form action="placedorder.jsp" method="POST">
       
  <input type="submit" name="lsubmit" value="submit">
     
 </form></td></tr>
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
</body>
</html>
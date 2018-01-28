<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
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

String  pname= request.getParameter ("ID"); 
String  quantity= request.getParameter ("Qty"); 
String  price=request.getParameter ("Price"); 


ps = con.prepareStatement("insert into CART(pname, quantity, price) values(?,?,?)");
ps.setString(1,pname);
ps.setString(2,quantity);
ps.setString(3,price);
ps.executeUpdate();
response.sendRedirect("OnlineStoreHome.jsp");
}
catch(SQLException e)
{
	System.out.println(e);	
}

%>
</body>
</html>
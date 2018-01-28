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
<title>deleteproduct</title>
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

String s=request.getParameter("PRODUCT_id");

ps = con.prepareStatement("DELETE FROM stock WHERE PRODUCT_ID=?");
ps.setString(1,s);
ps.executeUpdate();

ps = con.prepareStatement("DELETE FROM producttype WHERE PRODUCT_ID=?");
ps.setString(1,s);
ps.executeUpdate();

ps = con.prepareStatement("DELETE FROM productpricing WHERE PRODUCT_ID=?");
ps.setString(1,s);
ps.executeUpdate();

ps = con.prepareStatement("DELETE FROM product WHERE PRODUCT_ID=?");
ps.setString(1,s);
ps.executeUpdate();

}
catch(SQLException e)
{
	System.out.println(e);	
}

%>
    <br><hr>
               To View Products <a href="StaffProductsView.jsp">Click Here</a>
                <hr>     

</body>
</html>
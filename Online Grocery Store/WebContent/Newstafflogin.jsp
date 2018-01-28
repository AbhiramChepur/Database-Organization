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
<%
try{
String driver = "oracle.jdbc.OracleDriver";
String dbURL = "jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl";
String dbuser = "cpatnam";
String dbpassword = "santhosh";
Connection con = null;
PreparedStatement ps = null;
ResultSet rs=null;

Class.forName(driver);
con = DriverManager.getConnection(dbURL,dbuser,dbpassword);  



boolean flag = false;

String  STAFF_ID= request.getParameter ("STAFF_ID"); 
String  NAME= request.getParameter ("NAME"); 




ps = con.prepareStatement("select STAFF_ID,NAME from STAFF where STAFF_ID=? and NAME=?");

ps.setString(1,STAFF_ID);
ps.setString(2,NAME);
rs=ps.executeQuery();
while(rs.next()){
String dbUser = rs.getString("STAFF_ID");
String dbPassword= rs.getString("NAME");
boolean entrance;
entrance=false;

if ((STAFF_ID.equals(dbUser)) && (NAME.equals(dbPassword))){
entrance=true;
}
else{
entrance=false;
}
if (entrance==true){%>
<jsp:forward page="StaffProductsView.jsp"/> <%}
else{%>
<jsp:forward page="NewFile1.jsp"/> <%}
}

rs.close (); 
ps.close (); 
con.close ();
}

catch(SQLException e)
{
	System.out.println(e);	
}

%>




</body>
</html>
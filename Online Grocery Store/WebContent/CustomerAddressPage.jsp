<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Address</title>
    </head>
    <body bgcolor="#A35DA3">
       <div align="center"><h3>CUSTOMER ADDRESS INFO</h3></div><br>
        <div align="center">
        <form  action="CustomerAddressPage.jsp" method="POST">
        <table>
        <tr>    
        <td>CUSTOMER_ID:</td><td><input type="text" name="CUSTOMER_ID"></td>  
        </tr>
        <tr>
        <td>ADDRESS:</td>
        <td><br>
        <textarea rows="4" cols="50" name="ADDRESS">
Enter text here...</textarea></td>
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


ps = con.prepareStatement("insert into CUSTOMERADDRESS(CUSTOMER_ID, ADDRESS) values(?,?)");
ps.setString(1,request.getParameter("CUSTOMER_ID"));
ps.setString(2,request.getParameter("ADDRESS"));
ps.executeUpdate();
response.sendRedirect("CustomerAddressPage.jsp");
}
catch(SQLException e)
{
	System.out.println(e);	
}

%>
         
    </BODY>
</HTML>
       


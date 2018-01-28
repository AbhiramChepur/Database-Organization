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
    <body>
       <div align="center"><h3>CUSTOMER CREDITCARD INFO</h3></div><br>
        <div align="center">
        <form name="myform" action="CustomerCreditcardPage.jsp" method="POST">
        <table>
        <tr>    
        <td>CUSTOMER_ID:</td><td><input type="text" name="CUSTOMER_ID"></td>  
        </tr>
        <tr>
        <td>CREDIT CARD NO.:</td>
        <td><input type="text" name="CREDITCARDNO"></td>
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


ps = con.prepareStatement("insert into CUSTOMERCREDITCARDINFO(CUSTOMER_ID, CREDITCARDNO) values(?,?)");
ps.setString(1,request.getParameter("CUSTOMER_ID"));
ps.setString(2,request.getParameter("CREDITCARDNO"));
ps.executeUpdate();
response.sendRedirect("CustomerCreditcardPage.jsp");
}
catch(SQLException e)
{
	System.out.println(e);	
}

%>
         
    </BODY>
</HTML>
       


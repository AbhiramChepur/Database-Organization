<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>StaffProduct</title>
    </head>
    <body bgcolor="#7DBF61">
       <div align="center"><h3>STAFF PRODUCT PAGE</h3></div><br>
        <div align="center">
        
        <form name="myform" action="StaffProduct.jsp" method="POST">
        <table>
        <tr>    
        <td>Product_ID:</td><td><input type="text" name="PRODUCT_ID"></td>  
        </tr>
        <tr>
        <td>Product Name:</td>
        <td><input type="text" name="PNAME"></td>
        </tr>
        <tr>
        <td>Product Size:</td>
        <td><input type="text" name="PRODUCTSIZE"></td>
        </tr>
        <tr>
        <td>Address:</td>
        <td><input type="text" name="ADDRESS"></td>
        </tr>
        <tr>
        <td>Product Price:</td>
        <td><input type="text" name="COST"></td>
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


ps = con.prepareStatement("insert into PRODUCT(PRODUCT_ID, PNAME, PRODUCTSIZE) values(?,?,?)");
ps.setString(1,request.getParameter("PRODUCT_ID"));
ps.setString(2,request.getParameter("PNAME"));
ps.setString(3,request.getParameter("PRODUCTSIZE"));
ps.executeUpdate();
ps = con.prepareStatement("insert into PRODUCTPRICING(PRODUCT_ID, ADDRESS, COST) values(?,?,?)");
ps.setString(1,request.getParameter("PRODUCT_ID"));
ps.setString(2,request.getParameter("ADDRESS"));
ps.setString(3,request.getParameter("COST"));
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
       


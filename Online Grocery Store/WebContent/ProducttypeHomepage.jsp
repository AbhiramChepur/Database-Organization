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
<title>Product type Home Page</title>
</head>
<body>
<table align="center">
<tr>
<td align="center">
    <a href="OnlineStoreHome.jsp">HOME</a>  ||||| <a href="CustomerAddressPage.jsp"> ADDRESS</a>  |||||  <a href="CustomerCreditcardPage.jsp">CREDIT CARD</a></td>
</tr>
</table> 
<div align="center"> types 
<table>
        <tr>    
        <td><a href="diary.jsp">DIARY</a></td>  
        </tr>
        <tr>
        <td><a href="bakeryitem.jsp">BAKERY ITEM</a></td>
        </tr>  
       <tr>    
        <td><a href="drinks.jsp">DRINKS</a></td>  
        </tr>
        <tr>    
        <td><a href="personalcare.jsp">PERSONAL CARE</a></td>  
        </tr>
        <tr>    
        <td><a href="food.jsp">FOOD</a></td>  
        </tr>
         
       
        </table> 
</div>
</body>
</html>

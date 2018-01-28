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
<div align="center">
        <form  action="finalcuscart.jsp" method="POST">
        <table>
        <tr>    
        <td>product name:</td><td><input type="text" name="pname"></td>  
        </tr>
        <tr>
        <td>quantity:</td>
        <td><br>
        <input type="text" name="quantity"></td>
        </tr>
       <tr>
  <td><input type="submit" name="lsubmit" value="submit"></td>
</tr>
        </table>     
 </form>
        </div>   
</body>
</html>
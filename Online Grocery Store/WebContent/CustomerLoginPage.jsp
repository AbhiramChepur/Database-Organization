<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="#6FA9C0">
<div align="center"><h3>CUSTOMER LOGIN</h3></div><br>
        <div align="center">
        <form name="myform" action="Customervalidate.jsp" method="POST">
        <table>
        <tr>    
        <td>CUSTOMER_ID:</td><td><input type="text" name="CUSTOMER_ID"></td>  
        </tr>
        <tr>
        <td>Customer Name:</td>
        <td><input type="text" name="NAME"></td>
        </tr>  
       <tr>
       
    <td><input type="submit" name="lsubmit" value="submit"></td>
       
         </tr>
        </table>     
 </form>
        </div>  
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<body bgcolor="#C58038">
       <div align="center"><h3>ONLINE STORE HOME</h3></div><br>
<table>
<tr>
<td align=center>
    <a href="OnlineStoreHome.jsp">HOME</a>  ||||| <a href="CustomerAddressPage.jsp"> ADDRESS</a>  |||||  <a href="CustomerCreditcardPage.jsp">CREDIT CARD</a></td>
</tr>
</table>    
  <div align="center"> 
 <h2>PRODUCTS</h2>
 <form method=post action="inserttocart.jsp">
<B> Donut - ID 2</B><BR>
<BR> <BR> <input name="Donut" type=image src=Donut.gif> <BR> 
<BR>
Price $1.89.00<BR>  
<BR>
<INPUT NAME="Qty" size=3 > Quantity 
<BR><INPUT TYPE="HIDDEN" NAME="ID" VALUE="Donut"> 
<INPUT TYPE="HIDDEN" NAME="Price" VALUE="1.89"> 
<INPUT TYPE="HIDDEN" NAME="Describe" VALUE="Xhoclate"> 
<INPUT TYPE="HIDDEN" NAME="Ship" VALUE=".75"> 
<INPUT TYPE="HIDDEN" NAME="Multi" VALUE="Y"> 
<input name="Add to Cart" type=image src=add.gif>
</form>
<BR>
<form method=post action="inserttocart.jsp">
<B> Bread - ID 4</B><BR> 
<BR> <BR> <input name="Bread" type=image src=Bread.gif> <BR> 
<BR>
Price $1.00.00<BR>  
<BR> 
<INPUT NAME="Qty" size=3 VALUE=""> Quantity 
<BR><INPUT TYPE="HIDDEN" NAME="ID" VALUE="Bread"> 
<INPUT TYPE="HIDDEN" NAME="Price" VALUE="1.00"> 
<INPUT TYPE="HIDDEN" NAME="Describe" VALUE="White"> 
<INPUT TYPE="HIDDEN" NAME="Ship" VALUE=".75"> 
<INPUT TYPE="HIDDEN" NAME="Multi" VALUE="Y"> 
<input name="Add to Cart" type=image src=add.gif>
</form>
<BR>
<form method=post action="checkout.jsp">

<input type="submit" name="CheckOut" value="CheckOut">
</FORM> 
</div>
</body>
</html>
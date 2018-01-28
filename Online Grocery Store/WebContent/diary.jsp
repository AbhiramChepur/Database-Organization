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
 <FORM method=post action="inserttocart.jsp"> 
<B> Milk - ID 1</B><BR>

<BR> <BR> <input name="Milk" type=image src=Milk.gif> <BR> 
<BR>
Price $2.89.00<BR>  
<BR>
<INPUT NAME="Qty" size=3 > Quantity 
<BR><INPUT TYPE="HIDDEN" NAME="ID" VALUE="Milk"> 
<INPUT TYPE="HIDDEN" NAME="Price" VALUE="2.89"> 
<INPUT TYPE="HIDDEN" NAME="Describe" VALUE="2% fat"> 
<INPUT TYPE="HIDDEN" NAME="Ship" VALUE=".75"> 
<INPUT TYPE="HIDDEN" NAME="Multi" VALUE="Y"> 
<input name="Add to Cart" type=image src=add.gif>
</form>
<BR>
<form method=post action="inserttocart.jsp">
<BR>
<B> Eggs - ID 9</B><BR> 
<BR> <BR> <input name="Eggs" type=image src=Eggs.gif > <BR> 
<BR>
Price $1.52.00<BR>  
<BR> 
<INPUT NAME="Qty" size=3 VALUE=""> Quantity 
<BR><INPUT TYPE="HIDDEN" NAME="ID" VALUE="Eggs"> 
<INPUT TYPE="HIDDEN" NAME="Price" VALUE="1.52"> 
<INPUT TYPE="HIDDEN" NAME="Describe" VALUE="12dozens"> 
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
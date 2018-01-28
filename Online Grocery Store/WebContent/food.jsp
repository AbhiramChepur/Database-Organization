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
<B> Rice - ID 3</B><BR> 
<BR> <BR> <input name="Rice" type=image src=Rice.gif> <BR> 
<BR>
Price $7.99.00<BR>  
<BR> 
<INPUT NAME="Qty" size=3 VALUE=""> Quantity 
<BR><INPUT TYPE="HIDDEN" NAME="ID" VALUE="Rice"> 
<INPUT TYPE="HIDDEN" NAME="Price" VALUE="7.99"> 
<INPUT TYPE="HIDDEN" NAME="Describe" VALUE="Sonamasoori"> 
<INPUT TYPE="HIDDEN" NAME="Ship" VALUE=".75"> 
<INPUT TYPE="HIDDEN" NAME="Multi" VALUE="Y"> 
<input name="Add to Cart" type=image src=add.gif>
</form>
<BR>
<form method=post action="inserttocart.jsp">
<BR>
<B>Oil - ID 10</B><BR> 
<BR> <BR> <input name="Oil" type=image src=Oil.gif> <BR> 
<BR>
Price $9.24.00<BR>  
<BR> 
<INPUT NAME="Qty" size=3 VALUE=""> Quantity 
<BR><INPUT TYPE="HIDDEN" NAME="ID" VALUE="Oil"> 
<INPUT TYPE="HIDDEN" NAME="Price" VALUE="9.24"> 
<INPUT TYPE="HIDDEN" NAME="Describe" VALUE="Vegetable Oil"> 
<INPUT TYPE="HIDDEN" NAME="Ship" VALUE=".75"> 
<INPUT TYPE="HIDDEN" NAME="Multi" VALUE="Y"> 
<BR>
<BR> <input name="Add to Cart" type=image src=add.gif> <BR> 
</FORM> 
<BR>
<form method=post action="checkout.jsp">

<input type="submit" name="CheckOut" value="CheckOut">
</FORM> 
</div>
</body>
</html>
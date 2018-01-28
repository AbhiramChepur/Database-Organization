<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ONline Store Home</title>
    </head>
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
<form method=post action="inserttocart.jsp">
<B> ToothBrush - ID 5</B><BR> 
<BR> <BR> <input name="ToothBrush" type=image src=ToothBrush.gif> <BR> 
<BR>
Price $1.09.00<BR>  
<BR> 
<INPUT NAME="Qty" size=3 VALUE=""> Quantity 
<BR><INPUT TYPE="HIDDEN" NAME="ID" VALUE="ToothBrush"> 
<INPUT TYPE="HIDDEN" NAME="Price" VALUE="1.09"> 
<INPUT TYPE="HIDDEN" NAME="Describe" VALUE="Colgate"> 
<INPUT TYPE="HIDDEN" NAME="Ship" VALUE=".75"> 
<INPUT TYPE="HIDDEN" NAME="Multi" VALUE="Y"> 
<input name="Add to Cart" type=image src=add.gif>
</form>
<BR>
<form method=post action="inserttocart.jsp">
<BR>
<B> ToothPaste - ID 6</B><BR> 
<BR> <BR> <input name="ToothPaste" type=image src=ToothPaste.gif> <BR> 
<BR>
Price $2.89.00<BR>  
<BR> 
<INPUT NAME="Qty" size=3 VALUE=""> Quantity 
<BR><INPUT TYPE="HIDDEN" NAME="ID" VALUE="ToothPaste"> 
<INPUT TYPE="HIDDEN" NAME="Price" VALUE="2.89"> 
<INPUT TYPE="HIDDEN" NAME="Describe" VALUE="ColgateBig"> 
<INPUT TYPE="HIDDEN" NAME="Ship" VALUE=".75"> 
<INPUT TYPE="HIDDEN" NAME="Multi" VALUE="Y"> 
<input name="Add to Cart" type=image src=add.gif>
</form>
<BR>
<form method=post action="inserttocart.jsp">
<BR>
<B> SoftDrink - ID 7</B><BR> 
<BR> <BR> <input name="Coke" type=image src=Coke.gif > <BR> 
<BR>
Price $1.50.00<BR>  
<BR> 
<INPUT NAME="Qty" size=3 VALUE=""> Quantity 
<BR><INPUT TYPE="HIDDEN" NAME="ID" VALUE="Coke"> 
<INPUT TYPE="HIDDEN" NAME="Price" VALUE="1.50"> 
<INPUT TYPE="HIDDEN" NAME="Describe" VALUE="Coke or Sprite"> 
<INPUT TYPE="HIDDEN" NAME="Ship" VALUE=".75"> 
<INPUT TYPE="HIDDEN" NAME="Multi" VALUE="Y"> 
<input name="Add to Cart" type=image src=add.gif>
</form>
<BR>
<form method=post action="inserttocart.jsp">
<BR>
<B>Beer  - ID 8</B><BR> 
<BR> <BR> <input name="Beer" type=image src=Beer.gif> <BR> 
<BR>
Price $12.89.00<BR>  
<BR> 
<INPUT NAME="Qty" size=3 VALUE=""> Quantity 
<BR><INPUT TYPE="HIDDEN" NAME="ID" VALUE="Beer"> 
<INPUT TYPE="HIDDEN" NAME="Price" VALUE="12.89"> 
<INPUT TYPE="HIDDEN" NAME="Describe" VALUE="12% alcohol"> 
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

<form method=post action="checkout.jsp">

<input type="submit" name="CheckOut" value="CheckOut">
</FORM> 

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


ps = con.prepareStatement("insert into CUSTOMER(CUSTOMER_ID, NAME, CURRENTBALANCE) values(?,?,?)");
ps.setString(1,request.getParameter("CUSTOMER_ID"));
ps.setString(2,request.getParameter("NAME"));
ps.setString(3,request.getParameter("CURRENTBALANCE"));
ps.executeUpdate();
response.sendRedirect("NewFile1.jsp");
}
catch(SQLException e)
{
	System.out.println(e);	
}

%>
         
    </BODY>
</HTML>
       


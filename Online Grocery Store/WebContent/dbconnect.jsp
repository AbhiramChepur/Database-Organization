<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>dbconfig</title>
    </head>
    <body>
      <%
          
          String url="jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl";
          String Driver="oracle.jdbc.OracleDriver";
          String username="cpatnam";
          String password="santhosh";
          Connection conn=null;
          try{
              Class.forName(Driver);
              conn = DriverManager.getConnection(url,username,password);
              if(conn!=null){
              System.out.println("Connected");
              }else{
              System.out.println("cannot Connect to DB");}
              
          }catch(Exception e){
          System.out.println(e);
          }
          
            %>
    </body>
</html>

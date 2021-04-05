<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body><body bgcolor="DBDBF0">
</table>
	<table width="100%">
        <tr height="100px">
            <td colspan="3" align="center"><h1>Registration form</h1></td>
               <tr height="100px" align="center"><td colspan="4">
                   <form action="addop.jsp" method="post"><table>
                       <tr><td align="right"><h3 style="font-size: bold">Id : </h3></td><td><input type="number" name="id"/></td></tr>
                       <tr><td align="right"><h3 style="font-size: bold">source : </h3></td><td><input type="text" name="src"/></td></tr>
                       <tr><td align="right"><h3 style="font-size: bold">Destination : </h3></td><td><input type="text" name="dest"/></td></tr>
                       <tr><td align="right"><h3 style="font-size: bold">Price: </h3></td><td><input type="number" name="price"/></td></tr>
                       
                       
                        <tr><td></td><td><button  style="width: 150px;" type="submit">ADD</button></td></tr>
                     </form></td></tr>  
      </table></tr>

</body>
</html>
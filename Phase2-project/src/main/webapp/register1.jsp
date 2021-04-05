<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="DBDBF0">
</table>
	<table width="100%">
        <tr height="100px">
            <td colspan="3" align="center"><h1>Registration form</h1></td>
               <tr height="100px" align="center"><td colspan="4">
                   <form action="Operations.jsp" method="post"><table>
                       <tr><td align="right"><h3 style="font-size: bold">Name : </h3></td><td><input type="text" name="name"/></td></tr>
                       <tr><td align="right"><h3 style="font-size: bold">Gender : </h3></td><td><input type="radio" name="gender"/>Male 
                       &nbsp;&nbsp;&nbsp;
                       <input type="radio" name="gender"/>Female</td></tr>
                       <tr><td align="right"><h3 style="font-size: bold">Age : </h3></td><td><input type="number" name="age"/></td></tr>
                       <tr><td align="right"><h3 style="font-size: bold">Address : </h3></td><td><input type="text" name="address"/></td></tr>
                       <tr><td align="right"><h3 style="font-size: bold">Mobile no : </h3></td><td><input type="number" name="phn"/></td></tr>
                       <tr><td align="right"><h3 style="font-size: bold">email : </h3></td><td><input type="email" name="email"/></td></tr>
                       <tr><td align="right"><h3 style="font-size: bold">Password : </h3></td><td><input type="password" name="password"/></td></tr>
                       
                        <tr><td></td><td><button  style="width: 150px;" type="submit">Register</button></td></tr>
                     </form></td></tr>  
      </table></tr>
</body>
</html>
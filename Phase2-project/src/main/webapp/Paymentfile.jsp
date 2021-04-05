<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="DBDBF0">
<form action="Results.jsp" method=post>
<br><br><br><br><br><br><br><br><br>
<center>
<table>
	 <tr><td>Name: </td> <td><input type="text" name="name"><br></td></tr>
	 <tr><td>Card number:</td><td> <input type="text" name="card"><br></td></tr>
	 <tr><td>Expiry Date:</td><td> <input type="date" name="expiry"><br></td></tr>
	 <tr><td>CVV: </td><td><input type="password" name="password"><br></td></tr>
	 <tr><td></td><td><button  style="width: 150px;" type="submit">Proceed</button></td></tr>
	 </table>
</center>
</form>
</body>
</html>
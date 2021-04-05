
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="DBDBF0">
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "airline";
String userid = "root";
String password = "nishi";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<body bgcolor="DBDBF0">
<form action="register.jsp" method=post>
<br><br><br><br>
<center>
<table width="50%" align="center">
<tr height="100px"><td colspan="5" align="center"><h1>Available Flights</h1></td></tr>

<tr>
<th>Flight Id</th>
<th>Source</th>
<th>Destination</th>
<th>Price</th>
<th>Select to proceed</th>
</tr>
</center>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String x=request.getParameter("source");
String y= request.getParameter("dest");
System.out.println(x+"  "+y);
String sql ="SELECT id,src,dest,price FROM flights where src='"
		+ x + "'" + " AND dest='"
		+ y + "'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<center>
<tr>
<td align="center"><%=resultSet.getInt("id") %></td>
<td align="center"><%=resultSet.getString("src") %></td>
<td align="center"><%=resultSet.getString("dest") %></td>
<td align="center"><%=resultSet.getString("price") %></td>
<td align="center"><input type="radio" name="flight" value=<%=resultSet.getInt("id") %>> Select</td>
<br/><br/>
</tr>
</center>
<% 
}
%>
<tr height="100px"><td colspan="5" align="center"><input type="submit" value="BOOK"></td></tr>
</form>
<%
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>
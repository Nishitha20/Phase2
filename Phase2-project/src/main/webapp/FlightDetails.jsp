<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body >
	<%
int id = Integer.parseInt(request.getParameter("flight"));
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
<body>
<form action="register.jsp" method=post>
<h1>Available Flights</h1>
<table width="100%">
<tr>
<td>Flight Id</td>
<td>Source</td>
<td>Destination</td>
<td>Price</td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="SELECT id,src,dest,price FROM flights where id='"
		+ id + "'" ;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getInt("id") %></td>
<td><%=resultSet.getString("src") %></td>
<td><%=resultSet.getString("dest") %></td>
<td><%=resultSet.getString("price") %></td>
<br/><br/>
</tr>
<% 
}
%>
<td><input type="submit" value="Proceed"></td></form>
<%
String sqli ="insert into details(id,src,dest,price) values('"+resultSet.getInt("id")+"','"+resultSet.getString("src")+"','"+resultSet.getString("dest")+"','"+resultSet.getString("price")+"')"; 
resultSet = statement.executeQuery(sqli);
statement.executeUpdate(sqli);
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

      
</body>
</html>
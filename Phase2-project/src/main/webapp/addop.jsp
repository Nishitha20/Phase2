<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Added Succsessfully</h1>

<%
int u = Integer.parseInt(request.getParameter("id"));
String w = request.getParameter("src");
String z = request.getParameter("dest");
int  x =Integer.parseInt( request.getParameter("price"));
Class.forName("com.mysql.cj.jdbc.Driver");
String url1="jdbc:mysql://localhost:3306/airline?useSSl=false";
String user1="root";
String pass1="nishi";

Connection connection = null;
Statement s = null;
Statement s1=null;
ResultSet rs;
try
{
connection=DriverManager.getConnection(url1,user1,pass1);

String sql = "insert into flights(id,src,dest,price) values('" + u+ "','" + w + "','" + z + "','" + x +  "')";
s=connection.createStatement();
s.executeUpdate(sql);
connection.close();

}
catch (Exception e)
{
e.printStackTrace();
}
%>
</body>
</html>
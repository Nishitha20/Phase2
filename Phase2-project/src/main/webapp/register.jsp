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
int id = Integer.parseInt(request.getParameter("flight"));
Class.forName("com.mysql.cj.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/airline?useSSl=false";
String user="root";
String pass="nishi";

Connection connection = null;
Statement s = null;
ResultSet rs;
try
{
connection=DriverManager.getConnection(url,user,pass);

String sql = "insert into detailsid(id) values('" + id + "')";
s=connection.createStatement();
s.executeUpdate(sql);
connection.close();
}
catch (Exception e)
{
e.printStackTrace();
}
%>
<h3><center>New User  <a href="register1.jsp" >register</a></center></h3>
<br><h3><center>Already have an account <a href="Login.jsp" >Login</a> </center></h3>

	   

</body>
</html>
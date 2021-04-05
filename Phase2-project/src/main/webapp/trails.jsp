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
     <h1> Password Updated successfully</h1>
<%
String u = request.getParameter("name");
String v = request.getParameter("pwd");
String w=request.getParameter("new");
Class.forName("com.mysql.cj.jdbc.Driver");
String url1="jdbc:mysql://localhost:3306/airline?useSSl=false";
String user1="root";
String pass1="nishi";
System.out.println(u+ " "+w);
Connection connection = null;
Statement s = null;
Statement s1=null;
ResultSet rs;
try
{
connection=DriverManager.getConnection(url1,user1,pass1);

String sql = "UPDATE user SET password='"+w+"' WHERE lname='"+u+"'";
s=connection.createStatement();
int i=s.executeUpdate(sql);
if(i==1)
{
	System.out.println("record updated");
}
connection.close();

}
catch (Exception e)
{
e.printStackTrace();
}
%>
</body>
</html>
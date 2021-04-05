<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
String u = request.getParameter("name");
String w = request.getParameter("age");
String z = request.getParameter("address");
String x = request.getParameter("phone");
String y = request.getParameter("email");
String v = request.getParameter("password");
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

String sql = "insert into users(name,age,address,phn,email,password) values('" + u + "','" + w + "','" + z + "','" + x + "','" + y + "','" + v + "')";
s=connection.createStatement();
s.executeUpdate(sql);


String sqli="SELECT  *from flights f JOIN detailsid d where f.id=d.id";
s1=connection.createStatement();
rs=s1.executeQuery(sqli);

while(rs.next()){
%>
<center>

<br><br><br><br><br><br><br><br>
<h2>Flight ID: <%=rs.getInt("id") %><br>
Source :<%=rs.getString("src") %><br>
Destination: <%=rs.getString("dest") %><br>
Price: <%=rs.getString("price") %> <br>
</h2>
<a href="Paymentfile.jsp" >Proceed to payment</a>
</center>


<% 
connection.close();
}
}
catch (Exception e)
{
e.printStackTrace();
}
%>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body background ="22.PNG">
<form action="Login.jsp" method="post">

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
<center><h1>Hurray! Your Payment is Successful</h1></center>
<%

try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select f.fid,f.fname,f.source,f.dest FROM flights f JOIN details d ON f.source = d.source AND f.dest = d.dest";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>

<center>
Flight ID :<%=resultSet.getInt("f.fid") %><br/>
Flight Name :<%=resultSet.getString("f.fname") %><br/>
Flight Source :<%=resultSet.getString("f.source") %><br/>
Flight Destination:<%=resultSet.getString("f.dest") %>

</center>

<%
connection.close();
}

} catch (Exception e) {
e.printStackTrace();
}



%>
<center>
<input type="submit" value="Logout"/>
</center>
</form>
</body>
</html>
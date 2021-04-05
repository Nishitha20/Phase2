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
	<%
        Connection c1 = null;
        Statement st = null;
        ResultSet rs1;
        String q="";
        try {
        String lgnm=request.getParameter("name");
        String ps1=request.getParameter("pwd");
        System.out.println(lgnm+ " "+ps1);
        Class.forName("com.mysql.jdbc.Driver");
        c1=DriverManager.getConnection("jdbc:mysql://localhost/airline","root","nishi");
             
             
        st=c1.createStatement();
         q="select * from user where lname='"+lgnm+"' and password='"+ps1+"'";
         rs1=st.executeQuery(q);
           if(rs1.next())
          {
        	   %>
        	   <html>
		<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="DBDBF0">
		<table align="center" width="100%">
		<tr><td><a href="change.jsp">Change Password</a></td></tr>
		<tr><td><a href="display.jsp">Display All Flights</a></td></tr>
		<tr><td><a href="add.jsp" > Add Flights</a></td></tr>
		</table>
</body>
</html>
          <%    
          }
           else
          {
              out.println("<center>Invalid Login</center><br>");
              out.println("<a href='admin.jsp'>Try Again</a>");
             }
            
             }
    catch(Exception e)
    {
                    out.println("Invalid Insertion<br>");
                     out.println("<a href='admin.jsp'>Try Again</a>");
    }        
                    %>
</body>
</html>
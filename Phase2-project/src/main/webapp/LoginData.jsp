<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="DBDBF0">
                    
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
         q="select * from users where name='"+lgnm+"' and password='"+ps1+"'";
         rs1=st.executeQuery(q);
           if(rs1.next())
          {
              out.println("<html>");
              out.println("<head>");
              session.setAttribute("username",lgnm);
            out.print("<h3>Welcome " + lgnm+"</h3>");
            out.println("<br><a href='operations1.jsp'>Click Here to Continue..</a>");
            out.println("</head>");
            out.println("</body>");
          }
           else
          {
              out.println("<center><h2>Invalid Login</center></h2><br>");
              out.println("<center><a href='Login.jsp'>Try Again</a></center>");
             }
            
             }
    catch(Exception e)
    {
                    out.println("Invalid Insertion<br>");
                     out.println("<a href='Login.jsp'>Try Again</a>");
    }        
                    %>
              
              
              
 

    </body>
</html>
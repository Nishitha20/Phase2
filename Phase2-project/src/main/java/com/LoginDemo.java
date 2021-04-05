package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import static com.util.StringUtil.*;
@WebServlet("/Login")
public class LoginDemo extends HttpServlet {
private static final long serialVersionUID = 1L;

protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
sendLoginForm(response,false);
}

private void sendLoginForm(HttpServletResponse response, boolean withErrorMessage) throws IOException {
response.setContentType("text/html");
PrintWriter out=response.getWriter();
out.println("<HTML>");
out.println("<HEAD>");
out.println("<TITLE>Login</TITLE>");
out.println("<HEAD>");
out.println("<BODY>");
out.println("<CENTER>");

if(withErrorMessage)
{
out.println("Login failed, Please try again later<BR>");
}
out.println("<BR>");
out.println("<BR><H2>LOGIN PAGE</H2>");
out.println("<BR>");
out.println("<BR><FORM METHOD=POST>");
out.println("<TABLE>");
out.println("<TR>");
out.println("<TD>USER NAME:</TD>");
out.println("<TD><INPUT TYPE=TEXT NAME=uname></TD>");
out.println("</TR>");
out.println("<TR>");
out.println("<TD>PASSWORD:</TD>");
out.println("<TD><INPUT TYPE=PASSWORD NAME=password></TD>");
out.println("</TR>");
out.println("<TD ALIGN=RIGHT COLSPAN=2>");
out.println("<TD><INPUT TYPE=SUBMIT VALUE=Login></TD>");
out.println("</TR>");
out.println("</TABLE>");
out.println("</FORM>");
out.println("</CENTER>");
out.println("</BODY>");
out.println("</HTML>");

}

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
String username=request.getParameter("uname");
String password=request.getParameter("password");

if(login(username,password))
{
RequestDispatcher rd=request.getRequestDispatcher("trail.jsp");
rd.forward(request, response);
}
else
{
sendLoginForm(response,true);
}
}

private boolean login(String username, String password) {

try
{
Class.forName("com.mysql.cj.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/airline?useSSl=false";
String user="root";
String pass="nishi";

Connection conn=DriverManager.getConnection(url,user,pass);
System.out.println("got Connection");
System.out.println(username+password);

String sql="select * from airline.user where lname='"+fixSqlFieldValue(username)+"'"+" and password='"+fixSqlFieldValue(password)+"'";

Statement s=conn.createStatement();

ResultSet rs=s.executeQuery(sql);

if(rs.next())
{
rs.close();
s.close();
conn.close();
System.out.println("got true");

return true;
}
rs.close();
s.close();
conn.close();
}catch(ClassNotFoundException e)
{
e.printStackTrace();
}catch (SQLException e)
{
e.printStackTrace();
}
return false;
}
}


package com;

import java.io.IOException;
import javax.servlet.ServletException;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import java.io.PrintWriter;
import java.sql.DriverManager;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServlet;

public class LoginAirline extends HttpServlet
{
    protected void doPost(final HttpServletRequest req, final HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        final PrintWriter out = resp.getWriter();
        Connection c1 = null;
        Statement st = null;
        String q = "";
        try {
            final String lgnm1 = req.getParameter("lgnm");
            final String ps1 = req.getParameter("ps");
            Class.forName("com.mysql.jdbc.Driver");
            c1 = DriverManager.getConnection("jdbc:mysql://localhost/airline", "root", "nishi");
            st = c1.createStatement();
            q = "select * from user where lname='" + lgnm1 + "' and password='" + ps1 + "'";
            final ResultSet rs1 = st.executeQuery(q);
            if (rs1.next()) {
                out.println("<html>");
                out.println("<head>");
                out.println("<center>Welcome, " + lgnm1 + "</center><br>");
                out.println("<center><a href='Home.jsp'>Click Here to Continoue..</a></center>");
                out.println("</body>");
                out.println("</body>");
            }
            else {
                out.println("Invalid Login<br>");
                out.println("<a href='Login.jsp'>Try Again</a>");
            }
        }
        catch (Exception ex) {}
    }
}

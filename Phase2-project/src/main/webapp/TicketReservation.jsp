<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Airline Reservation</title>
    </head>
    <body background ="22.PNG">
       <table width="100%">
            <tr height="100px">
                <td colspan="3" align="center"><h1>Airline Reservation</h1></td>
            <td align="right" style="vertical-align: top;"><h3><jsp:include page="header.jsp"></jsp:include></h3></td></tr>
            <tr height="50px" align="center"><td><h3><a href="Home.jsp">Home</a></h3></td>
                <td><h3><a href="TicketReservation.jsp">Ticket Reservation</a></h3></td>
                <td><h3><a href="Payment.jsp">Payment</a></h3></td>
                <td><h3><a href="Book Ticket Report.jsp">Book Ticket Report</a></h3></td></tr>
                    <tr height="500px" align="center"><td colspan="4">
                            <form action="Operations.jsp" method="post"><table>
                                <tr><td align="right"><h3 style="font-size: bold">Login Name : </h3></td><td>  <input type="text" name="lgnm"></td></tr>
                                <tr><td align="right"><h3 style="font-size: bold">Source : </h3></td><td> <select name="source">
                            <option value="America">America</option>
                            <option value="Singapore">Singapore</option>
                            <option value="Japan">Japan</option>
                            <option value="India">India</option>
                            <option value="Zimbobwe">Zimbobwe</option>
                                        </select></td> </tr>
                                <tr><td align="right">  <h3 style="font-size: bold">Destination : </h3></td><td> <select name="dest">
                            <option value="America">America</option>
                            <option value="Japan">Japan</option>
                            <option value="England">England</option>
                            <option value="India">India</option>
                            <option value="Singapore">Singapore</option>
                                        </select></td> </tr>
                                <tr><td align="right"><h3 style="font-size: bold">Date : </h3></td><td><input type="date" name="date"/></td></tr>
                                <tr><td align="right"><h3 style="font-size: bold">Time : </h3></td><td><input type="time" name="time"/></td></tr>
                                <tr><td></td><td><button  style="width: 150px;" type="submit">Insert</button></td></tr>
                                       </form>  
                            </table>
                              </td>
               </tr>
              
        </table>
    </body>
</html>
<%-- 
    Document   : schedule1
    Created on : Mar 5, 2019, 11:16:34 AM
    Author     : Denny
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" media="screen" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.5/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/schedule.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<title>Admin Schedule</title>
    <%@ page import="java.util.*,model.*,org.hibernate.*,org.hibernate.cfg.*" %>
<%! int id; String busno;String pickuppoint;String arrivaltime;String droppoint;String droptime;Session session1 = null; %>

    <body>
        <div class="container">
        <nav>
            <ul class="nav nav-justified">
                <li><a href="adminhome.html">Home</a></li>
                <li><a href="adminsearch.jsp">Search Schedule</a></li>
                <li><a href="adminschedule.jsp">View Schedule</a></li>
                <li><a href="login.html">Logout</a></li>
            </ul>
        </nav>
    </div>
        <div class="container">
            <div class="jumbotron">
                <h1>Arriving Time</h1>
                        <table align="center" class="table table-hover" id="table">
                            <form action="delete.jsp" method="post">
                                <thead>
                                <th>Id</th>
                                <th>Bus No.</th>
                                <th>PickUp Point</th>
                                <th>Arrival Time</th>
                                <th>Drop Point</th>
                                <th>Drop Time</th>
                                <th>Action</th>
                            </thead>
                            <%
                            Configuration cf = new Configuration();
                            cf.configure("schedule.cfg.xml");
                            SessionFactory sf = cf.buildSessionFactory();
                            session1 = sf.openSession();

                            String sqr = "from schedule";
                            Query qr = session1.createQuery(sqr);
                            Iterator it = qr.iterate();
                            while(it.hasNext()){
                                schedule s = (schedule)it.next();
                                id = s.getId();
                                busno = s.getBusno();
                                pickuppoint = s.getPickuppoint();
                                arrivaltime = s.getArrivaltime();
                                droppoint = s.getDroppoint();
                                droptime = s.getDroptime();
                            %>
                            <tbody>
                                <td><%=id%></td>
                                <td><%=busno%></td>
                                <td><%=pickuppoint%></td>
                                <td><%=arrivaltime%></td>
                                <td><%=droppoint%></td>
                                <td><%=droptime%></td>
                                <td> <a href="update.jsp?id=<%=id%>&busno=<%=busno%>&pickuppoint=<%=pickuppoint%>&arrivaltime=<%=arrivaltime%>&droppoint=<%=droppoint%>&droptime=<%=droptime%>"  class="btn btn-warning btn-md">Update</a> 
                                    <input type="checkbox" class="form-control" value="<%=id%>" name="c1"></td>
                            </tbody>
                            <%
                            }
                            session1.close();
                            %>
                            <tbody>
                            <td colspan="10" align="center"> <input type="submit" class="btn btn-danger btn-lg btn-block" value="Delete Selected Schedule"> </td>
                            </tbody>
                            <tbody>
                            <td colspan="10" align="center"><a href="addschedule.jsp" class="btn btn-block btn-success btn-lg">Add Schedule</a></td>
                            </tbody>
                            </form>
                        </table>
                        
            </div>
        </div>
    </body>
</html>

<%-- 
    Document   : search
    Created on : Mar 5, 2019, 11:59:07 AM
    Author     : Denny
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" media="screen" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/faculty.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Admin Search</title>
</head>
<style>
    .input
    {
        width: 300px;
        height: 35px;
        paddding: 20px;
        margin: 0 auto;
        border-radius: 10px;
        
    }
    .jumbotron
    {
        margin-top:100px;
    }
    
    
</style>
<%@ page import="java.util.*,model.*,org.hibernate.*,org.hibernate.cfg.*" %>
<%! String busno;String pickuppoint;String arrivaltime;String droppoint;String droptime;Session session1 = null; %>
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
                    <div>
                        <center> <h1>Search Schedule</h1></center>
                        <center>
                        <form action="" method="get">
                            <label for="search">
                            <span><i class="fa fa-search"></i></span>
                            </label> 
                            <input class="input" type="text" name="searching" placeholder="Search Here.....">
                        </form>
                        </center>
                            <br> <br>
                            <table class="table table-hover">
                                    <thead>
                                        <th>Bus No.</th>
                                        <th>Pick-Up Place</th>
                                        <th>Arrival Time</th>
                                        <th>Drop Place</th>
                                        <th>Drop Time</th>
                                    </thead>
                                    <%
                                        Configuration cf = new Configuration();
                                        cf.configure("schedule.cfg.xml");
                                        SessionFactory sf = cf.buildSessionFactory();
                                        session1 = sf.openSession();
                                        String search = request.getParameter("searching");
                                        String data;
                                        if(search != null){
                                            data = "from schedule where busno like '%"+search+"%' or pickuppoint like '%"+search+"%' or droppoint like '%"+search+"%'";
                                        } else {
                                            data = "from schedule";
                                        }
                                        Query qr = session1.createQuery(data);
                                        Iterator it = qr.iterate();
                                        while(it.hasNext()){
                                        schedule s = (schedule)it.next();
                                        busno = s.getBusno();
                                        pickuppoint = s.getPickuppoint();
                                        arrivaltime = s.getArrivaltime();
                                        droppoint = s.getDroppoint();
                                        droptime = s.getDroptime();
                                    %>
                                    <tbody>
                                        <td><%=busno%></td>
                                        <td><%=pickuppoint%></td>
                                        <td><%=arrivaltime%></td>
                                        <td><%=droppoint%></td>
                                        <td><%=droptime%></td>
                                    </tbody>
                                    <%
                                        }
                                       session1.close();
                                    %>
                        </table>
                </div>
            </div>
    </div>

    <!--<script src="lib/search.js"></script>-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.5/js/bootstrap.min.js"></script>
    
        
    </body>
</html>


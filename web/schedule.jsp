<%-- 
    Document   : schedule
    Created on : Mar 4, 2019, 5:05:21 PM
    Author     : Denny
--%>

<%@page import="javax.security.auth.login.Configuration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" media="screen" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="project/css/schedule.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<title>Schedule</title>

	
</head>
<%@ page import="java.util.*,model.*,org.hibernate.*,org.hibernate.cfg.*" %>
<%! String busno;String pickuppoint;String arrivaltime;String droppoint;String droptime;Session session1 = null; %>
<body>
	<div class="container">
        <nav>
            <ul class="nav nav-justified">
                <li><a href="project/home.html">Home</a></li>
                <li><a href="#">Profile</a></li>
                <li><a href="project/search.html">Search</a></li>
                <li><a href="project/schedule1.jsp">Schedule</a></li>
                <li><a href="project/login.html">Logout</a></li>
            </ul>
        </nav>
    </div>
    
    
    <div class="container">
        <div class="jumbotron">
            <h1 align="center">Add Schedule</h1>
            <form action="ScheduleServlet" class="form">
                <div class="form-group">
                    <input type="text" name="busno" class="form-control" placeholder="Enter Your BusNo">
                </div>
                <div class="form-group">
                    <input type="text" name="pickuppoint" class="form-control" placeholder="Enter PickupPoint">
                </div>
                <div class="form-group">
                    <input type="text" name="arrivaltime" class="form-control" placeholder="Enter arrivaltime">
                </div>
                <div class="form-group">
                    <input type="text" name="droppoint" class="form-control" placeholder="Enter Drop point">
                </div>
                <div class="form-group">
                    <input type="text" name="droptime" class="form-control" placeholder="Enter Drop time">
                </div>
                <input type="submit" class="btn btn-block btn-primary btn-lg" value="Add Schedule">
                <a href="project/schedule1.jsp" class="btn btn-block btn-success btn-lg">Display Schedule</a>
                </form>
            
        </div>
    </div>
    <footer>        
        <h2>&copy; All Rights Reserved</h2>
    </footer>

	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.5/js/bootstrap.min.js"></script>

	<script>
	</script>

</body>

</html>

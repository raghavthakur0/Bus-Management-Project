<%-- 
    Document   : schedule
    Created on : Mar 4, 2019, 6:22:24 PM
    Author     : Denny
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" media="screen" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.5/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/schedule.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<title>Admin Add</title>

</head>

<style>
    .form{
        width:600px;
        margin: 150px auto;
        padding: 10px;
    }
</style>

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
                <h1>Add Schedule Here</h1>
                <form action="../ScheduleServlet" class="form">
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
                <a href="adminschedule.jsp" class="btn btn-block btn-success btn-lg">Display Schedule</a>
                </form>
            </div>
        </div>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <!--<script src="lib/schedule.js"></script>-->
	<script>
	</script>

</body>

</html>


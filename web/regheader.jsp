<%@page import="java.sql.ResultSet"%>
<%@page import="connection.query"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Design Maniacs | Contact</title>
<meta charset="utf-8">
<link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="css/reset.css" type="text/css" media="screen">
<link rel="stylesheet" href="css/grid.css" type="text/css" media="screen">
<link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.1.1.js"></script>
<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<link rel="stylesheet" href="css/ie.css" type="text/css" media="screen">
<link href='http://fonts.googleapis.com/css?family=Lato:300italic' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Lato:300' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Lato:400' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Lato:700' rel='stylesheet' type='text/css'>
<![endif]-->
</head>
<body>
<header>
  <div class="container_12">
    <div class="grid_12">
      <div class="wrapper"> <a href="index.html" class="logo">design.maniacs</a>
        
      </div>
    </div>
  </div>
</header>
<form method="post"  enctype="multipart/form-data" action="fileupload.jsp">
    <table cellpadding="5">
    	<tr><td><strong>Name </strong></td><td><input type="text" name="name"></td></tr> </p>
    <tr><td><strong>DOB</strong></td><td><input type="date" name="date"></td></tr>
    <tr><td><strong>Gender </strong></td><td><em>Male
                <input type="radio" name="gender" value="Male">
    </em><em>Female
        <input type="radio" name="gender" value="Female">
    </em></td></tr>
    <tr><td><strong>Phone</strong></td><td><input type="text" id="phone" name="phone"></td></tr>
    <tr><td><strong>Email</strong></td><td><input type="text" id="email" name="email"></td></tr>
    <tr><td><strong>Username</strong></td><td><input type="text" id="username" name="username"></td></tr>
    <tr><td><strong>Password</strong></td><td><input type="password" id="pass1" name="pass1"></td></tr>
    <tr><td><strong>Confirm Password</strong></td><td><input type="password" id="pass2" name="pass2"></td></tr>
    <tr><td><strong>Profile Picture</strong></td><td><strong><input type="file" name="photo" /></strong></td></tr>
    <tr><td></td><td align="center"><strong>
                <input type="submit" name="submit1" value="Submit"/>
    </strong></td></tr>
    <tr><td><a href="sam.jsp">Back</a></td></tr>
    </table>
    </form>
<footer>
  <div class="container_12">
    <div class="wrapper">
      <div class="grid_8"> Noorul Ahsan &copy; 2017 | <a href="#">Privacy Policy</a> |</div>
      <div class="grid_4">
        <div class="social"> My Social:<a href="#"><img src="images/facebook-icon.png" alt=""></a><a href="#"><img src="images/twitter-icon.png" alt=""></a> </div>
      </div>
    </div>
  </div>
</footer>
</body>
</html>
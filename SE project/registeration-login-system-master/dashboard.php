<?php
//include auth_session.php file on all user panel pages
include("auth_session.php");
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Dashboard - Client area</title>
    <link rel="stylesheet" href="style.css" />
</head>
<body>
     <div class="form">
    <center><H1><p>Hey, <?php echo $_SESSION['username']; ?>!</p>
    <p>You are in user dashboard page.</p>
    <form  action="logout.php" method="post" >
        <input type="submit" value="Logout" name="submit" class="login-button"/>
    </form>
    <form method="post" action="donate.php">
        <input type="submit" value="Donate Now" name="submit" class="login-button"/>
    </form>

    <form action="showdata.php" method="post">
        <input type="submit" value="Show donations" name="submit" class="login-button"/>
    </form>
</H1></div>
</body>
</html>

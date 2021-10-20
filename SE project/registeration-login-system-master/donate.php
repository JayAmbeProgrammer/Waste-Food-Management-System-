<?php
   
    include("auth_session.php");
?>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Registration</title>
    <link rel="stylesheet" href="style.css"/>
</head>


<body>

<?php
 require('db.php');
$donor_name="";
$food_type="";
$qty="";
$ddate="";
$pickup="";


if(isset($_POST["btn_sub"]))
{

$donor_name=$_POST["donorname"];
$food_type=$_POST["foodtype"];
$qty=$_POST["qty"];
$add=$_POST["add"];
$ddate=date('Y-m-d');
$pickup=$_POST["datet"];
$query = "INSERT into donation (donor_name, donation_food_type, people_qty, address, donation_date, pickup_date_time) VALUES ('$donor_name', '$food_type', '$qty' , '$add', '$ddate', '$pickup')";
$result = mysqli_query($con, $query);

}
?>





<form class="form" method="post">
    <input type='text' class='login-input' name='donorname' placeholder="Username" required />
    <input type="text" class="login-input" name="foodtype" placeholder="Food Type" required />
    <input type="number" class="login-input" name="qty" placeholder="Quantity" required />
    <input type="text" class="login-input" name="add" placeholder="Address" required />
    <input type="datetime-local" class="login-input" name="datet" placeholder="Pickup Date" required />
    <input type="submit" name="btn_sub" value="Donate" class="login-button">
</form>
<form class="form" action="logout.php" method="post" >
        <input type="submit" value="Logout" name="submit" class="login-button"/>
    </form>

</body>
</html>

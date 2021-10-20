<?php
	session_start();
	include("db.php");
	$id=$_SESSION['username'];


?>


<!DOCTYPE html>
<html>
<head>
	<title></title>
	 <style type="text/css">
 	table {
  border-collapse: collapse;
}

td, th {
  border: 1px solid #999;
  padding: 0.5rem;
  text-align: left;
}
 </style>
</head>
<body>


 
<br>
<br>





<center>
<table class='table table-striped'>

	<thead>
		<tr>
			<th> Donation Food Type </th>
			<th> People Quantity </th>
			<th> Donor Name </th>
			<th> Donation Date </th>
			<th> pickup date time </th>
		</tr>
	</thead>



	<tbody>

<?php

$qes2="Select * from donation";
$qry2=$con->query($qes2);
while ($res=$qry2->fetch_assoc())

{
?>

		<tr>
			
			<td><?php echo $res["donation_food_type"]; ?></td> 
			<td><?php echo $res["people_qty"]; ?></td>
			<td><?php echo $res["donor_name"]; ?></td> 
			<td><?php echo $res["donation_date"]; ?></td> 
			<td><?php echo $res["pickup_date_time"]; ?></td>
			
		</tr>
		<?php
}
		?>
	</tbody>
</table>
</center>







</body>
</html>







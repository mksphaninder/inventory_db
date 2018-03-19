<!DOCTYPE html>
<html>
<head>

<style>
table
	{
	border-style:solid;
	border-width:2px;
	border-color:pink;
	}
</style>
	<title>Inventory List</title>

</head>
	
<body bgcolor="#EEFDEF">
	<a href='indexAfterLogin.php'>"Click here to go back"</a>
	<?php
	require "authentication.php";

	$List = "SELECT `Item_ID`, `Item_name`, `Storage Location`, `Qty`, `date` FROM `inventory`, `storage`, `items` WHERE inventory.Item_ID = items.ItemID";
	$result = $mysqli->query($List);
	if($result->num_rows>0){
		echo "\n Here is the inventory"."<br>";

		echo "<table border='1'>
		<tr>
		<th>Item ID</th>
		<th>Item Name</th>
		<th>Storage Location</th>
		<th>Quantity</th>
		<th>Date</th>
		</tr>";
		while($row = $result -> fetch_assoc()){
			
			  echo "<tr>";
			  echo "<td>" . $row['Item_ID'] . "</td>";
			  echo "<td>" . $row['Item_name'] . "</td>";
			  echo "<td>" . $row['Storage Location'] . "</td>";
			  echo "<td>" . $row['Qty'] . "</td>";
			  echo "<td>" . $row['date'] . "</td>";
			  echo "</tr>";
		}
		return TRUE;
	}

	else{
		echo "nothing in inventory yet";
	}
	echo "</table>";
	$mysqli->close();
?>


</body>
</html>


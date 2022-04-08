<?php

include('db_connection.php');
$conn = OpenCon();
$sql_get = "SELECT * FROM btsAlbum";
$sql_dat = mysqli_query($conn, $sql_get) or die('error getting data.');

echo "<table>";
echo "<tr><th>albumNum</th><th>albumName</th><th>year</th></tr>";

while($row = mysqli_fetch_array($sql_dat, MYSQLI_ASSOC)){
	echo "<tr><td>";
	echo $row['albumNum'];
	echo "</td><td>";
	echo $row['albumName'];
	echo "</td><td>";
	echo $row['year'];
	echo "</td><td>";
}

echo "</table>";

?>
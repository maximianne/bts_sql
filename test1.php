<?php
	include_once 'dbh.php';
?>

<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<?php
		$sql = "SELECT * FROM btsAlbum WHERE albumNum = '12';";
		$result = mysqli_query($conn, $sql);
		$resultCheck = mysqli_num_rows($result);

		if ($resultCheck > 0) {
			while ($row = mysqli_fetch_assoc($result)) {
				echo $row['albumName']; 
				echo $row['year'];
				echo $row['albumNum'] . "<br>";
			}
		}
	?>
</body>
</html>
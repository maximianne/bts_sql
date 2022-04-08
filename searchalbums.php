<?php

$search = $_POST['search'];

$host = "localhost";
$dbUser = "root";
$dbPassword = "";
$dbname = "BTSdb";

$conn = new mysqli($host, $dbUser, $dbPassword,$dbname);

if ($conn->connect_error) {
	die("Connection failed: ". $conn->connect_error);
}

$sql= "SELECT * FROM btsAlbum WHERE albumName like '%$search%'";

$result = $conn->query($sql);

if ($result->num_rows > 0){
	while($row=$result->fetch_assoc()) {
		echo $row["albumName"]."<br>".$row["albumNum"]."<br>".$row["year"]."<br>"."<br>"."<br>";
	}
} else {
	echo "0 records";
}

$conn->close();

?>

<br>
<button type="button" onclick=location.href='btsalbums.html' class="btn btn-dark">Back</button>
<!--<a href="btstest.html">Back to home</a>-->
<br>
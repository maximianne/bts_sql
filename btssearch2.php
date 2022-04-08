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

$sql= "SELECT * FROM memberFacts WHERE member like '%$search%'";

$result = $conn->query($sql);

if ($result->num_rows > 0){
	while($row=$result->fetch_assoc()) {
		echo $row["member"]."<br>".$row["fullName"]."<br>".$row["nicknames"]."<br>".$row["birthday"]."<br>".$row["birthplace"]."<br>".$row["favFood"]."<br>".$row["zodiac"]."<br>".$row["micColor"]."<br>". "<br>". "<br>";
	}
} else {
	echo "0 records";
}

$conn->close();

?>

<br>
<button type="button" onclick=location.href='btssample.html' class="btn btn-dark">Back</button>
<!--<a href="btstest.html">Back to home</a>-->
<br>


<?php


$firstname = $_POST ['firstname'];
$lastname = $_POST ['lastname'];
$username = $_POST ['username'];
$password = $_POST ['password'];
$email = $_POST ['email'];
$bias = $_POST ['bias'];

if (!empty($firstname) || !empty($lastname) || !empty($username)|| !empty($password) || !empty($email) || !empty($bias)) {

	$host = "localhost";
	$dbUser = "root";
	$dbPassword = "";
	$dbname = "BTSdb";

	$conn = new mysqli($host, $dbUser, $dbPassword,$dbname);

	if (mysqli_connect_error()) {
		die('Connection Error (' .mysqli_connect_errno().')' . mysqli_connect_error());
	} else {
		$SELECT = "SELECT username FROM users WHERE username = ? Limit 1;";
		$INSERT = "INSERT INTO users (firstname, lastname, username, password, email, bias) values(?,?,?,?,?,?);";

		//prepare statement
		$stmt = $conn-> prepare($SELECT);
		$stmt-> bind_param("s", $username);
		$stmt-> execute();
		$stmt-> bind_result($username);
		$stmt-> store_result();
		$rnum = $stmt->num_rows;

		if ($rnum==0) {
			$stmt->close();

			$stmt = $conn-> prepare($INSERT);
			$stmt-> bind_param("ssssss", $firstname, $lastname, $username, $password, $email, $bias);
			$stmt->execute();
			echo "Account created: Welcome to the Army!";

		} else {
			echo "That username is already taken";
		}
		$stmt->close();
		$conn->close();
	}
} else {
	echo "All fields are required";
	die();
}

?>

<br>
<button type="button" onclick=location.href='btsconnect2.html' class="btn btn-dark">Back</button>
<!--<a href="btstest.html">Back to home</a>-->
<br>



<?php
    if (isset($_POST['submit'])) {
  try {
    require "config.php";
    require "common.php";

    $connection = new PDO($dsn, $username, $password, $options);
        $sql = "SELECT *
  		FROM btsAlbum
  		WHERE albumName = :albumName";
  		$albumName = $_POST['albumName'];

		$statement = $connection->prepare($sql);
		$statement->bindParam(':albumName', $albumName, PDO::PARAM_STR);
		$statement->execute();

$result = $statement->fetchAll();
  } catch(PDOException $error) {
    echo $sql . "<br>" . $error->getMessage();
  }
}
?>


<?php

if (isset($_POST['submit'])) {
    	if ($result && $statement->rowCount() > 0) { ?>
    		    <h2>Results</h2>

    <table>
      <thead>
<tr>
  <th>#</th>
  <th>albumNum</th>
  <th>year</th>
  <th>albumName</th>
  <!--<th>contactFirstName</th>
  <th>phone</th>
  <th>addressLine1</th>
  <th>addressLine2</th>
  <th>city</th>
  <th>state</th>
  <th>postalCode</th>
  <th>country</th>
  <th>salesRepEmployeeNumber</th>
  <th>creditLimit</th>-->
</tr>
      </thead>
      <tbody>
    	<?php	foreach ($result as $row) { ?>
    			      <tr>
				<td><?php echo escape($row["albumNum"]); ?></td>
				<td><?php echo escape($row["year"]); ?></td>
				<td><?php echo escape($row["albumName"]); ?></td>
				<!--<td><?php echo escape($row["contactFirstName"]); ?></td>
				<td><?php echo escape($row["phone"]); ?></td>
				<td><?php echo escape($row["addressLine1"]); ?></td>
				<td><?php echo escape($row["addressLine2"]); ?> </td>
				<td><?php echo escape($row["city"]); ?> </td>
				<td><?php echo escape($row["state"]); ?> </td>
				<td><?php echo escape($row["postalCode"]); ?> </td>
				<td><?php echo escape($row["country"]); ?> </td>
				<td><?php echo escape($row["salesRepEmployeeNumber"]); ?> </td>
				<td><?php echo escape($row["creditLimit"]); ?> </td>-->
      				</tr>
    			<?php } ?>
      			</tbody>
  				</table>
    		}
    	<?php } else 	{ ?>
    	 > No results found for <?php echo escape($_POST['albumName']); ?>.
  <?php }
} ?>
  


    <h2>Discover all albums</h2>

    <form method="post">
    	<label for="album">Album Name</label>
    	<input type="text" id="album" name="album">
    	<input type="submit" name="submit" value="View Results">
    </form>

    <a href="btssample.html">Back to home</a>

   



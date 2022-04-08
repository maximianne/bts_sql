<style>
  table {
    border:1px solid black;
    border-collapse: collapse;
    margin-bottom: 30px;
  }
  th, td {
    border: 1px solid black;
    padding: 25px;
  }
</style>

<?php

$search = $_POST['search'];
//$column = $_POST['column'];

$host = "localhost";
$dbUser = "root";
$dbPassword = "";
$dbname = "BTSdb";

$conn = new mysqli($host, $dbUser, $dbPassword,$dbname);

if ($conn->connect_error) {
  die("Connection failed: ". $conn->connect_error);
}

$tables = mysqli_query($conn, "SHOW TABLES");
while ($table = mysqli_fetch_object($tables))
{

    $table_name = $table->{"Tables_in_BTSdb"};

    $sql = "SELECT * FROM " . $table_name . " WHERE ";
    $fields = array();


    $columns = mysqli_query($conn, "SHOW COLUMNS FROM " . $table_name);
 
 ?>
     
<table>
  <caption>
    <?php echo $table_name; ?>
  </caption>
  <tr>

      <?php while ($col = mysqli_fetch_object($columns)) { 

        array_push($fields, $col->Field . " LIKE '%" . $search . "%'");


        ?>
        <th>
          <?php echo $col->Field; ?>
        </th>
      <?php } 

        mysqli_data_seek($columns, 0);

      ?>
    
  </tr>
  <?php 
    $sql .= implode(" OR ", $fields);
    $result = mysqli_query($conn, $sql);

    while ($row = mysqli_fetch_object($result))
    {
      ?>

      <tr>
        <?php while ($col = mysqli_fetch_object($columns)) { ?>

          <td>
            <?php 
            if(stripos($row->{$col->Field}, $search) !== false)
            {
              echo "<mark>" . $row->{$col->Field} . "</mark>";
            }
            else {
            echo $row->{$col->Field}; 
              }

            ?>

          </td>

        <?php } ?>

      </tr>

      <?php
    }
  ?>

</table>

<?php


}

?>

<br>
<button type="button" onclick=location.href='btstest.html' class="btn btn-dark">Back</button>
<!--<a href="btstest.html">Back to home</a>-->
<br>
 
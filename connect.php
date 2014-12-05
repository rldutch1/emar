<?php
$db_server = 'localhost';
$db_user = 'emar';
$db_password = 'emar';
$db_dbname = 'emar';

//$con=mysqli_connect("localhost","my_db","my_dbu","my_db");
$con=mysqli_connect($db_server, $db_user, $db_password, $db_dbname);
// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
?>
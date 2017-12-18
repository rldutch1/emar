<?php
$db_server = 'localhost';
$db_user = 'emar';
$db_password = 'emar1234!';
$db_dbname = 'emar';

$con=mysqli_connect($db_server, $db_user, $db_password, $db_dbname);
/* Connection checking is done with the confirm_queryi function in functions.php
// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
*/
?>

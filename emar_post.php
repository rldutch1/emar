<?php
include('connect.php');
include('../../includes/functions.php');

$x1 = $_POST['namequery'];
$x2 = $_POST['medquery'];
$x3 = $_POST['dose'];
$x4 = $_POST['unitquery'];
$x5 = $_POST['admindate'];
$x6 = $_POST['symptom'];
$x7 = $_POST['temperature'];

echo   $x1 . " " . $x2 . " " . $x3 . " " . $x4 . " " . $x5 . " " . $x6 . " " . $x7;


?>
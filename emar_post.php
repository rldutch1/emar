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

$query="insert into h_mar (person_id, medication, dose, unit, admin_dttm, symptom) values
				($x1, $x2, '" . $x3 ."', {$x4}, '" . $x5 . "', '" . $x6 . "');";

/*
This is working but I am testing last Insert ID below.
			$result=mysqli_query($con, $query);
			confirm_queryi($result);
*/

//Begin mysqli_insert_id testing.
if (mysqli_query($con, $query)) {
    $last_id = mysqli_insert_id($con);
    echo "New record created successfully. Last inserted ID is: " . $last_id;
} else {
    echo "Error: " . $query . "<br>" . mysqli_error($con);
}
//End mysqli_insert_id testing.

mysqli_close($con);


?>
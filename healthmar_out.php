<?php
/*
session_start();
//If the login session is correct, display message and logout link.
	if ($_SESSION['username'])
{
*/
//Array Example Here

//include_once('../../includes/pw5new.php');
include_once('../../includes/pw5i.php');
include_once('../../includes/functions_i.php');

// $query="select * from vw_temp order by date_time;";
function vw_healthmar(){
$query="select * from vw_healthmar order by date_time;";

$result=mysql_query($query);
confirm_query($result);
$arraydata = array();

while ($row = mysql_fetch_array($result))
	array_push($arraydata, array(
		'person' => $row[0],
		'medication' => $row[1],
		'dose' => $row[2],
		'unit' => $row[3],
		'date_time' => $row[4]
		));
	echo json_encode(array("healthmar_data" => $arraydata));
//	echo json_encode($arraydata);
}

function vw_temp(){
$query="select * from vw_temp order by date_time;";

$result=mysql_query($query);
confirm_query($result);
$arraydata = array();

while ($row = mysql_fetch_array($result))
	array_push($arraydata, array(
		'person' => $row[0],
		'celcius' => $row[1],
		'fahrenheit' => $row[2],
		'date_time' => $row[3]
		));
	echo json_encode(array("healthtemp_data" => $arraydata));
//	echo json_encode($arraydata);
}

function medication(){
$query="select * from healthmedication order by medication;";

$result=mysql_query($query);
confirm_query($result);
$arraydata = array();

while ($row = mysql_fetch_array($result))
	array_push($arraydata, array(
		'medication' => $row[1]
		));
//	echo json_encode(array("healthmedication" => $arraydata));
	echo json_encode(array($arraydata));
//	echo json_encode($arraydata);
}

function p_namelist1(){
$query="select id, concat(firstname,\" \",middlename,\" \",lastname) as name from h_person";
$result=mysql_query($query);
confirm_query($result);
$arraydata = array();
while($row = mysql_fetch_array($result))
	array_push($arraydata, array(
		'id' => $row[0],
		'name' => $row[1]
		));
//	print_r array($arraydata);
	echo json_encode(array($arraydata));
/*
	echo "<html><head><title></title></head><body>";
	echo '<option value="' . $row[0] . '">' . $row[1] . '</option>';
	echo "</body></html>";
*/

}


//vw_healthmar();
//vw_temp();
//medication();

/*
}
//If the session was not set redirect the user back to the login page.
	else
	header ("location: login.php");
*/

?>


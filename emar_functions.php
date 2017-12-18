<?php
include('mysqli_test1.php');
include_once('../php/includes/functions_i.php');

//echo "\r\n <br /> Holland \r\n <br />";
//function p_namelist(){ //When this is converted to a function I get an error Undefined variable: con in /home/rldutch1rh/public_html/robholland.net/php/play/emar/emar_functions.php on line 9
$query="select id, concat(firstname,\" \", middlename,\" \", lastname) as name from h_person";
		$result=mysqli_query($con, $query);
			confirm_queryi($result);
		$arraydata = array();
			echo "<html><head><title></title></head><body><select>";
			while($row = mysqli_fetch_array($result)){
			echo "<option value='" . $row[0] . "'>" . $row[1] . "</option>";
		}
			echo "</select></body></html>";
//	}https://github.com/rldutch1/emar.git
//}
?>

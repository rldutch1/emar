<?php
//include('../includes/pw5new.php');
include('connect.php');
include('../../includes/functions.php');

//echo "\r\n <br /> Holland \r\n <br />";
echo "<html>
<head>
<title></title>


<link rel='stylesheet' type='text/css' href='css/jquery-ui-1.10.3.custom.css'>
<link rel='stylesheet' type='text/css' href='css/script.css'>
</head><body>";
echo "<br /><hr /><table><tr><th>Patient Name</th><th>Medication</th><th>Dose</th><th>Unit</th><th>Temperature (F)</th><th>Administration Date Time</th><th>Symptoms</th><th></th></tr>";
echo "<form name='p_list' action='emar_post.php' method='post'>";

echo "<tr><td><select id='namequery' name='namequery'>";
$namequery="select
				id
				, concat(firstname,' ',lastname)
				, birth_date
				, birth_city
				, birth_state
				, birth_place
				from
					h_person
				where active_ind = 1
				order by firstname, lastname;";
		$nameresult=mysqli_query($con, $namequery);
			confirm_queryi($nameresult);
		$arraydata1 = array();
			echo "<option selected='selected' value='1'>Select</option>";
			while($row = mysqli_fetch_array($nameresult)){
			echo "<option value='" . $row[0] . "'>" . $row[1] . "</option>";
			}
			echo "</select></td>";

echo "<td><select id='medquery' name='medquery'>";
$medquery="select
				id
				, medication
				from
					h_med
				where active_ind = 1
				and id > 1
				order by medication;";
		$medresult=mysqli_query($con, $medquery);
			confirm_queryi($medresult);
		$arraydata1 = array();
			echo "<option selected='selected' value='1'>None Given</option>";
			while($row = mysqli_fetch_array($medresult)){
			echo "<option value='" . $row[0] . "'>" . $row[1] . "</option>";
			}
			echo "</select></td>";

echo "<td><input type='text' id='dose' name='dose' /></td>";

echo "<td><select id='unitquery' name='unitquery'>";
$unitquery="select
				id
				, unit
				from
					h_unit
				where active_ind = 1
				and id > 1
				order by unit;";
		$unitresult=mysqli_query($con, $unitquery);
			confirm_queryi($unitresult);
		$arraydata1 = array();

			echo "<option selected='selected' value='1'>None</option>";
			while($row = mysqli_fetch_array($unitresult)){
			echo "<option value='" . $row[0] . "'>" . $row[1] . "</option>";
			}
			echo "</select></td>";

echo "<td><input type='text' id='temperature' name='temperature' /></td>";

echo "<td><input type='text' id='admindate' name='admindate' /></td>";
//echo "<td><input type='text' id='basic_example_1' name='basic_example_1' /></td>";

echo "<td><input type='text' id='symptom' name='symptom' /></td>";

echo "<td><button type='button' name='prg_name' onclick='emarlist()'>Submit</button></td></tr></form>";

echo "</table><br /><hr />";

echo "<div id='emardisplay'></div>";


include('jsfooter.php');
			echo "</body></html>";
?>


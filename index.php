<?php
//include('../includes/pw5new.php');
include_once('connect.php');
//include('../php1/includes/functions.php');

echo "<html>
<head>
<title></title>


<link rel='stylesheet' type='text/css' href='css/jquery-ui-1.10.3.custom.css'>
<link rel='stylesheet' type='text/css' href='css/emar.css'>
</head><body>";
echo "<br /><hr /><table border='1'>
<caption><a href='http://www.robholland.co/phpmyadmin/' target='_blank'>online EMAR</a></caption>
<tr><th><input type='button' name='ptname' value='Patient Name'></th>
<th><input type='button' name='medname' value='Medication'></th>
<th>Dose</th>
<th><input type='button' name='unit' value='Unit'></th>
<th>Date Time Given</th>
<th>Symptoms</th>
<th>Temperature (F)</th>
<th></th></tr>";
echo "<form name='p_list' action='emar_post.php' method='post'>";

echo "<tr><td><select id='namequery' name='namequery'>";
$namequery = $handler->query("select
				id
				, concat(firstname,' ',lastname) as name
				, birth_date
				, birth_city
				, birth_state
				, birth_place
				from
					h_person
				where active_ind = 1
				order by firstname, lastname;");

			echo "<option selected='selected' value='0'>Select</option>";
			while($r = $namequery->fetch(PDO::FETCH_OBJ)){
			echo "<option value='" . $r->id . "'>" . $r->name . "</option>";
			}
			echo "</select></td>";

echo "<td><select id='medquery' name='medquery'>";

$medquery = $handler->query('select
				id
				, medication
				from
					h_med
				where active_ind = 1
				order by medication;');

			echo "<option selected='selected' value='0'>Select Medication</option>";
			while($r = $medquery->fetch(PDO::FETCH_OBJ)){
			echo "<option value='" . $r->id . "'>" . $r->medication . "</option>";
			}
			echo "</select></td>";

echo "<td><input type='text' id='dose' name='dose' value='' /></td>";

echo "<td><select id='unitquery' name='unitquery'>";
$unitquery = $handler->query('select
				id
				, unit
				from
					h_unit
				where active_ind = 1
				order by unit;');

			echo "<option selected='selected' value='0'>Select Unit</option>";
			while($r = $unitquery->fetch(PDO::FETCH_OBJ)){
			echo "<option value='" . $r->id . "'>" . $r->unit . "</option>";
			}
			echo "</select></td>";

echo "<td><input type='text' id='admindate' name='admindate' size='30' /></td>";

echo "<td><input type='text' id='symptom' name='symptom' /></td>";

echo "<td title='Enter zero if temperature not taken.'><input type='text' id='temperature' name='temperature' /></td>";

echo "<td><button type='button' name='prg_name' onclick='puth_mar()'>Submit</button></td></tr></form>";

echo "</table><br /><hr />";

echo "<div id='emardisplay'></div>";


include('jsfooter.php');
			echo "</body></html>";
?>

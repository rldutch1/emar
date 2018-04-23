<?php /*include('onselect_connect_pdo.php'); */?>
<?php include('connect.php'); ?>
<!DOCTYPE html>
<html>
<head>
	<!-- Source: https://www.w3schools.com/php/php_ajax_database.asp -->
<style>
table {
    width: 100%;
    border-collapse: collapse;
}

table, td, th {
    border: 1px solid black;
    padding: 5px;
}

th {text-align: left;}
</style>
</head>
<body>

<?php
$q = intval($_GET['q']);

//***************************************************************************

//$statement = $handler->prepare("select * from thetablename order by id;");
$statement = $handler->prepare("select * from vw_healthsummary WHERE id = '".$q."' order by admin_dttm desc;");
$statement->execute(); //Run the prepared query. Prevents MySQL injection.

$RowCount = $statement->rowCount(); //Count the number of rows returned.

echo "
			<table>
			<tr>
			<th>Patient Name</th>
			<th>Medication</th>
			<th>Dose/Unit</th>
			<th>Admin Date/Time</th>
			<th>Temp Fehrenheit</th>
			<th>Temp Celcius</th>
			<th>Symptom</th>
			</tr>";
			while($r = $statement->fetch(PDO::FETCH_OBJ)){
	    echo "<tr>";
  	  echo "<td>" . $r->person . "</td>";
    	echo "<td>" . $r->medication . "</td>";
    	echo "<td>" . $r->dose_unit . "</td>";
    	echo "<td>" . $r->admin_dttm . "</td>";
    	echo "<td>" . $r->temp_f . "</td>";
    	echo "<td>" . $r->temp_c . "</td>";
    	echo "<td>" . $r->symptom . "</td>";
    	echo "</tr>";
			}
echo "</table>";
//***************************************************************************

?>
</body>
</html>

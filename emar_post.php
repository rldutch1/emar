<?php
include('connect.php');
include('../php1/includes/functions.php');

$x1 = $_POST['namequery'];
$x2 = $_POST['medquery'];
$x3 = $_POST['dose'];
$x4 = $_POST['unitquery'];
$x5 = $_POST['admindate'];
$x6 = $_POST['symptom'];
$x7 = $_POST['temperature'];

//$query="insert into h_mar (person_id, medication, dose, unit, admin_dttm, symptom) values
//				($x1, $x2, '" . $x3 ."', {$x4}, '" . $x5 . "', '" . $x6 . "');";
$insert_hmar=$handler->prepare("insert into h_mar (person_id, medication, dose, unit, admin_dttm, symptom) values (:person_id, :medication, :dose, :unit, :admin_dttm, :symptom);");
				$insert_hmar->bindValue(':person_id',$x1,PDO::PARAM_STR);
				$insert_hmar->bindValue(':medication',$x2,PDO::PARAM_STR);
				$insert_hmar->bindParam(':dose',$x3,PDO::PARAM_INT);
				$insert_hmar->bindValue(':unit',$x4,PDO::PARAM_STR);
				$insert_hmar->bindValue(':admin_dttm',$x5,PDO::PARAM_STR);
				$insert_hmar->bindValue(':symptom',$x6,PDO::PARAM_STR);
$insert_hmar->execute();
$last_id = $handler->lastInsertID(); //This is used to match the record for the h_temp table.

//    echo "New record created successfully. Last inserted ID is: " . $last_id;
$q1="Record added successfully.<br />";

		//$query2="insert into h_temp (temp_f, person_id, temp_dttm, symptom, hm_id) values ($x7, $x1, '" . $x5 . "', '" . $x6 . "', $last_id);";
$insert_htemp=$handler->prepare("insert into h_temp (temp_f, person_id, temp_dttm, symptom, hm_id) values (:temp_f, :person_id, :temp_dttm, :symptom, :hm_id);");
				$insert_htemp->bindValue(':temp_f',$x7,PDO::PARAM_INT);
				$insert_htemp->bindValue(':person_id',$x1);
				$insert_htemp->bindValue(':temp_dttm',$x5);
				$insert_htemp->bindValue(':symptom',$x6);
				$insert_htemp->bindValue(':hm_id',$last_id);
$insert_htemp->execute();

echo $q1 . "ID: " . $last_id . "<br />Query for <a href='http://www.robholland.co/phpmyadmin/' target='_blank'>online EMAR</a>: <br />";

$select_vwhsum=$handler->prepare("select * from vw_healthsummary where id = :id;");
				$select_vwhsum->bindParam(':id',$x1,PDO::PARAM_INT);
$select_vwhsum->execute();
echo "<div><table border='1'><caption>Medication Administration Record</caption>";
echo "<tr><th>Patient</th><th>Medication</th><th>Dose/Unit</th><th>Date Time</th><th>Temp Fehrenheit</th><th>Temp Celcius</th><th>Symptom(s)</th></tr>";
			while($row=$select_vwhsum->fetch(PDO::FETCH_ASSOC)){
				//echo "<pre>" . var_dump($row) . "</pre>";
				$person = htmlspecialchars($row['person']);
				$medication = htmlspecialchars($row['medication']);
				$dose_unit = htmlspecialchars($row['dose_unit']);
				$admin_dttm = htmlspecialchars($row['admin_dttm']);
				$temp_f = htmlspecialchars($row['temp_f']);
				$temp_c = htmlspecialchars($row['temp_c']);
				$symptom = htmlspecialchars($row['symptom']);
echo "<tr><td>" . $person . "</td><td>" . $medication . "</td><td>" . $dose_unit . "</td><td>" . $admin_dttm . "</td><td>" . $temp_f . "</td><td>" . $temp_c . "</td><td>" . $symptom . "</td></tr>";
			}
echo "</table></div>";

?>

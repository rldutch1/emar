<?php
include('mysqli_test1.php');
include('../../includes/functions.php');

//echo "\r\n <br /> Holland \r\n <br />";
echo "<html><head><title></title></head><body>";

echo "<form name='p_list' action='h_mar.php' method='post'><select>";
$query="select id, concat(firstname,\" \", middlename,\" \", lastname) as name from h_person order by lastname, firstname";
		$result=mysqli_query($con, $query);
			confirm_queryi($result);
		$arraydata = array();

			while($row = mysqli_fetch_array($result)){
			echo "<option value='" . $row[0] . "'>" . $row[1] . "</option>";
			}
			echo "</select>

			</form></body></html>";

?>

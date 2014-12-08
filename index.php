<?php
//include('../includes/pw5new.php');
include('connect.php');
include('../../includes/functions.php');

//echo "\r\n <br /> Holland \r\n <br />";
echo "<html>
<head>
<title></title>
<script type='text/javascript' src='iview_list.js'></script>
<script src='http://code.jquery.com/jquery-latest.min.js'></script>
<script type='text/javascript' src='js/jquery-ui-1.10.3.custom.js'></script>
<script type='text/javascript'>
		$('document').ready(function(){
			$('#datepickerID').datepicker({dateFormat: 'yy-mm-dd'})
			});
</script>
<link rel='stylesheet' type='text/css' href='css/jquery-ui-1.10.3.custom.css'>
</head><body>";

echo "<form name='p_list' action='iview_list.php' method='post'>";

echo "<select id='namequery' name='namequery'>";
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
			echo "<option selected='selected' value='1'>Patient Name</option>";
			while($row = mysqli_fetch_array($nameresult)){
			echo "<option value='" . $row[0] . "'>" . $row[1] . "</option>";
			}
			echo "</select>";

echo "<select id='medquery' name='medquery'>";
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
			echo "</select>";

echo "<input type='text' id='dose' name='dose' />";

echo "<select id='unitquery' name='unitquery'>";
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
			echo "</select>";

echo "<input type='text' id='temperature' name='temperature' />";

//echo "<input type='text' id='datepickerID' name='admindate' />";
echo "<input type='text' id='basic_example_1' name='basic_example_1' />";

echo "<input type='text' id='symptom' name='symptom' />";

echo"			<button type='button' name='prg_name' onclick='iviewlist()'>Submit</button>
<br /><hr />
			</form>";

echo "<div id='iviewdisplay'></div>";

/*
$color1 = "#CCD7E3";
$color2 = "#F4F9FF";

echo "<style>table {border-collapse:collapse;} th {background-color:#00FFFF;}</style>";
echo "<form name='p_list' action='iview.php' method='post'>";

//	$query="select * from iview_update1 where checked = 'Y' and ff in ('N','Y');";
	$query="select * from iview_update1 where checked = 'Y' and ff = 'Y';";
		$result=mysqli_query($con, $query);
			confirm_queryi($result);
		$arraydata2 = array();

			echo "<table border='1'>
			<tr>
			<th>ID</th>
			<th>Code Value</th>
			<th>Definition</th>
			<th>Description</th>
			<th>Display</th>
			<th>Display Key</th>
<!--			<th>Checked</th>
			<th>File Found</th> -->
			<th>Filename</th>
			</tr>
			";

			while($row = mysqli_fetch_array($result)){
			//echo "<option value='" . $row[0] . "'>" . $row[1] . "</option>";
						$row_color = ($row_count % 2) ? $color1 : $color2;
//						echo "<tr bgcolor='" . $row_color . "'><th>" . ($row_count + 1) . "</th><td>" . $firstnumber . "-" . $middlenumber . "-" . $lastnumber . "</td></tr>";

			echo "
			<tr bgcolor='" . $row_color . "'>
			<th>" . $row[0] . "</th>
			<td>" . $row[2] . ".00</td>
			<td>" . $row[3] . "</td>
			<td>" . $row[4] . "</td>
			<td>" . $row[5] . "</td>
			<td>" . $row[6] . "</td>
<!--			<td>" . $row[7] . "</td>
			<td>" . $row[8] . "</td> -->
			<td><a href='http://www.robholland.net/php/play/test/" . $row[0] . ".txt'>" . $row[0] . ".txt</td>
			</tr>";
						$row_count++;
			}

			echo "</table>";
*/
/* Produce the filenames.
			while($row1 = mysqli_fetch_array($result)){
			//echo "<option value='" . $row[0] . "'>" . $row[1] . "</option>";
			echo "
			grep -i \"" . $row1[2] . "\" *.prg |cut -d : -f1 > iview" . $row1[0] . ".1<br />
			grep -i \"" . $row1[3] . "\" *.prg |cut -d : -f1 > iview" . $row1[0] . ".2<br />
			grep -i \"" . $row1[4] . "\" *.prg |cut -d : -f1 > iview" . $row1[0] . ".3<br />
			grep -i \"" . $row1[5] . "\" *.prg |cut -d : -f1 > iview" . $row1[0] . ".4<br />
			grep -i \"" . $row1[6] . "\" *.prg |cut -d : -f1 > iview" . $row1[0] . ".5<br />
			";
			}
*/
/* Produce the filenames with code snippet.
			while($row1 = mysqli_fetch_array($result)){
			//echo "<option value='" . $row[0] . "'>" . $row[1] . "</option>";
			echo "
			grep -i \"" . $row1[2] . "\" *.prg > iview" . $row1[0] . ".1<br />
			grep -i \"" . $row1[3] . "\" *.prg > iview" . $row1[0] . ".2<br />
			grep -i \"" . $row1[4] . "\" *.prg > iview" . $row1[0] . ".3<br />
			grep -i \"" . $row1[5] . "\" *.prg > iview" . $row1[0] . ".4<br />
			grep -i \"" . $row1[6] . "\" *.prg > iview" . $row1[0] . ".5<br />
			";
			}
*/

/*
			while($row2 = mysqli_fetch_array($result)){
			//echo "<option value='" . $row[0] . "'>" . $row[1] . "</option>";
			echo "
			cat iview" . $row2[0] . ".* >> iview" . $row2[0] . ".txt<br />
			";
			}
*/

//select * from iview_update1 where checked = 'Y' and ff = 'Y';
//create view vw_ivprograms as select ivu_id, program from iview_programs group by program;
//select distinct(ivu_id) from iview_programs where program = '1bh_mpage_crystalloids_jdm.prg';
//select ivu_id from vw_ivprograms where program = '1bh_mpage_crystalloids_jdm.prg';
//select * from iview_update1 i1 where checked = 'Y' and ff = 'Y' and i1.id in (select distinct(ivu_id) from iview_programs where ivu_id in (select distinct(ivu_id) from iview_programs where program = '1samt_az_pulmonarycomp.prg')); //Dropdown choice will be entered for the program name.
//select * from vw_ivprograms order by program, ivu_id; //Dropdown choices will be made from this select.
/*Walkthrough:
The original CCL query generated 88 DISPLAY_KEY/CODE_SETS/Terms to look for. I added code_set 14003 because it is used on some forms.
Code_set 14003 generated an additional 50 terms to look for, making a total of a 138 search terms.
This page shows all 138 terms.
Running grep on the backend to search for those terms generated a list of 400?? text files that contained the filenames
where the term could be found. ????????

 7,323 files. The large number of files was due to
the term being found multiple times in the same file and the filename being generated for each occurance.
After removing the duplicate files only 138 files remained. 100 terms remained (meaning I could not find 38 terms).
			echo "</form>";
*/
include('jsfooter.php');
			echo "</body></html>";
?>


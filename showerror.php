<?php

$errors = file_get_contents('error_log');
if(!$errors){
echo "Good job! No error_log found!";
}
else {
echo $errors;	
}

//$errors = file_get_contents('error_log');
//echo $errors . "\r\n <br />";
?>

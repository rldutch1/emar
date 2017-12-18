<?php
include('../../includes/pw5new.php');


echo "
<html>
<head>
<title></title>
<script type='javascript' src='js/json2.js'></script>
<script src='http://code.jquery.com/jquery-latest.min.js'></script>
<script type='text/javascript' src='js/healthmar.js'></script>
<link rel='stylesheet' type='text/css' href='css/healthmar.css' />
</head>
<style>

</style>
<body>
<form name='temp' action='' method='POST'>
Name: 				<input type='text' name='person' />
Temperature: 	<input type='text' name='temperature' />
Time:					<input type='text' name='time' />
<br />
<input type='button' onclick='submit' value='Submit' />
</form>

<div id='div_id'>data here</div>

</body>
</html>
";
?>
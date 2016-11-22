<?php 
	
	$db = pg_connect("host=localhost port=5432 dbname=Theatres user=postgres password=1234"); 

	$performance = $_POST['performance']; 
	$theater = $_POST['theater']; 
	$date = $_POST['date']; 
	$time = $_POST['time']; 
	$price = $_POST['price']; 
	$description = $_POST['description']; 

	$query = "INSERT INTO Play (play_date, play_time, description, price, tid, per_id) VALUES ('" . $date . "', '" . $time . "', '" . $description . "', " . $price . ", " . $theater . ", " . $performance . ")";

	$result = pg_query($query); 
	if (!$result) { 
		$errormessage = pg_last_error(); 
		echo "Error with query: " . $errormessage; 
		exit(); 
	} 
	pg_close(); 

?> 
<?php 
	$db = pg_connect("host=localhost port=5432 dbname=Theatres user=postgres password=1234"); 

	$login = $_POST['login']; 
	$password = $_POST['password'];
	$rating = 5;

	$query = "INSERT INTO Viewer (login, password, rating) VALUES  ('" . $login . "', '" . $password . "', '" . $rating . "')";
	$result = pg_query($query); 
	if (!$result) { 
		$errormessage = pg_last_error(); 
		echo "Error with query: " . $errormessage; 
		exit(); 
	} 
	pg_close(); 

?> 
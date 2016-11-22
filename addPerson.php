<?php 
	$db = pg_connect("host=localhost port=5432 dbname=Theatres user=postgres password=1234"); 

	$firstname = $_POST['firstname']; 
	$secondname = $_POST['secondname']; 
	$position = $_POST['position']; 
	$grade = $_POST['grade']; 

	$query = "with rows as (INSERT INTO Person(name, surname) VALUES('" . $firstname . "', '" . $secondname . "') RETURNING pid) INSERT INTO " . $position . " (pid, grade, grade_history) SELECT pid, '" . $grade . "', '" . $grade . "' FROM rows";
	$result = pg_query($query); 
	if (!$result) { 
		$errormessage = pg_last_error(); 
		echo "Error with query: " . $errormessage; 
		exit(); 
	} 
	pg_close(); 

?> 
<?php
	$grade = $_REQUEST["t"];
	$login = $_REQUEST["l"];
	$play = $_REQUEST["p"];
	$date = date("Y-m-D");

	$db_theatres = pg_connect("host=localhost port=5432 dbname=Theatres user=postgres password=1234");
						
	if(!$db_theatres){
		echo'No connection :(';
	}
	
	$query = " SELECT * FROM Grade 
					WHERE login = '".$login."' AND sid = ".$play."";
	$result = pg_query($db_theatres, $query);
	if($row = pg_fetch_row($result)){
		echo 'You have already graded this play';
	}
	else{
		$query = " INSERT INTO Grade (login, sid, grade) VALUES 
					( '".$login."', ".$play.", ".$grade.")";
		$result = pg_query($db_theatres, $query);
		
		echo 'Your Grade is now written';
	}
	pg_close($db_theatres);
?>
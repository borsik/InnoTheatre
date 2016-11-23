<?php
	$t = $_REQUEST["t"];
	
	$db_theatres = pg_connect("host=localhost port=5432 dbname=Theatres user=postgres password=1234");
						
	if(!$db_theatres){
		echo'No connection :(';
	}
	$query = "SELECT grade
			FROM Scenarist
			WHERE pid='".$t."'";
	$result = pg_query($db_theatres, $query);
	while($row = pg_fetch_row($result)){
		$return = $return.'<h1>' .$row[0].' </h1> ';
	}
	pg_close($db_theatres);
	
	echo $return;
?>
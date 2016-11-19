<?php
	$t = $_REQUEST["t"];
	
	$db_theatres = pg_connect("host=localhost port=5432 dbname=Theatres user=postgres password=1234");
						
	if(!$db_theatres){
		echo'No connection :(';
	}
	$return = '<option value="">Select theatre, please...</option> ';
	$query = "SELECT DISTINCT T.name, T.tid FROM theater T WHERE city = '".$t."'";
	$result = pg_query($db_theatres, $query);
	while($row = pg_fetch_row($result)){
		$return = $return.'<option value="'.$row[1].'">' .$row[0].' </option> ';
	}
	pg_close($db_theatres);
	
	echo $return;
?>
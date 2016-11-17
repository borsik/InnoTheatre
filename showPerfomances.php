<?php
	$t = $_REQUEST["t"];
	
	$db_theatres = pg_connect("host=localhost port=5432 dbname=Theatres user=postgres password=1234");
						
	if(!$db_theatres){
		echo'No connection :(';
	}
	$return = '<option value="">Select performance, please...</option> ';
	$query = "SELECT per.per_name 
			FROM play p
			INNER JOIN theater t ON p.tid = t.tid
			INNER JOIN performance per ON per.per_id=p.per_id
			WHERE t.city='".$t."'";
	$result = pg_query($db_theatres, $query);
	while($row = pg_fetch_row($result)){
		$return = $return.'<option value="'.$row[0].'">' .$row[0].' </option> ';
	}
	pg_close($db_theatres);
	
	echo $return;
?>
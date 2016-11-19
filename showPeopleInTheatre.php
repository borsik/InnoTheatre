<?php
	$t = $_REQUEST["t"];
	
	$db_theatres = pg_connect("host=localhost port=5432 dbname=Theatres user=postgres password=1234");
						
	if(!$db_theatres){
		echo'No connection :(';
	}
	$return = '<optgroup label="Producers"> ';
	$query = "SELECT DISTINCT p.pid, p.name, p.surname 
				FROM Person p JOIN Perf_prod pr ON (p.pid = pr.pid)
				WHERE pr.per_id IN (SELECT pl.per_id FROM Play pl
				WHERE pl.tid = ".$t.")"; 
	$result = pg_query($db_theatres, $query);
	while($row = pg_fetch_row($result)){
		$return = $return.'<option value="'.$row[0].'">' .$row[1].' '.$row[2].' </option> ';
	}
	$return = $return.'</optgroup>';
	
	$return = $return.'<optgroup label="Scenarists"> ';
	$query = "SELECT DISTINCT p.pid, p.name, p.surname 
				FROM Person p JOIN Perf_scen pr ON (p.pid = pr.pid)
				WHERE pr.per_id IN (SELECT pl.per_id FROM Play pl
				WHERE pl.tid = ".$t.")"; 
	$result = pg_query($db_theatres, $query);
	while($row = pg_fetch_row($result)){
		$return = $return.'<option value="'.$row[0].'">' .$row[1].' '.$row[2].' </option> ';
	}

	$return = $return.'</optgroup>';
	
	$return = $return.'<optgroup label="Actors"> ';
	$query = "SELECT DISTINCT p.pid, p.name, p.surname 
				FROM Person p JOIN a_p a ON (p.pid = a.pid)
				WHERE a.sid IN (SELECT pl.sid FROM Play pl
				WHERE pl.tid = ".$t.")"; 
	$result = pg_query($db_theatres, $query);
	while($row = pg_fetch_row($result)){
		$return = $return.'<option value="'.$row[0].'">' .$row[1].' '.$row[2].' </option> ';
	}

	$return = $return.'</optgroup>';
	
	$return = $return.'<optgroup label="Musicians"> ';
	$query = "SELECT DISTINCT p.pid, p.name, p.surname 
				FROM Person p JOIN m_p m ON (p.pid = m.pid)
				WHERE m.sid IN (SELECT pl.sid FROM Play pl
				WHERE pl.tid = ".$t.")"; 
	$result = pg_query($db_theatres, $query);
	while($row = pg_fetch_row($result)){
		$return = $return.'<option value="'.$row[0].'">' .$row[1].' '.$row[2].' </option> ';
	}

	$return = $return.'</optgroup>';
	
	$return = $return.'<optgroup label="Musical groups"> ';
	$query = "SELECT DISTINCT mg.group_id, mg.name 
				FROM Musical_group mg JOIN mg_p m ON (mg.group_id = m.group_id)
				WHERE m.sid IN (SELECT pl.sid FROM Play pl
				WHERE pl.tid = ".$t.")"; 
	$result = pg_query($db_theatres, $query);
	while($row = pg_fetch_row($result)){
		$return = $return.'<option value="'.$row[0].'m">' .$row[1].' </option> ';
	}

	$return = $return.'</optgroup>';
	
	$return = $return.'<optgroup label="Dance groups"> ';
	$query = "SELECT DISTINCT dg.dgroup_id, dg.name 
				FROM dance_group dg JOIN dg_p d ON (dg.dgroup_id = d.dgroup_id)
				WHERE d.sid IN (SELECT pl.sid FROM Play pl
				WHERE pl.tid = ".$t.")"; 
	$result = pg_query($db_theatres, $query);
	while($row = pg_fetch_row($result)){
		$return = $return.'<option value="'.$row[0].'d">' .$row[1].' </option> ';
	}

	$return = $return.'</optgroup>';
	pg_close($db_theatres);
	echo $return;
?>
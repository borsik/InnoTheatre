<?php

		$city = $_REQUEST["c"];
		$theatre = $_REQUEST["t"];
		$performance = $_REQUEST["p"];
		$p = $_REQUEST["ppl"];
		$people = array();
		$i = 0;
		while($i < strlen($p)){
			while($p[$i] != ',' && $p[$i] != '.')
				$i++;
			if($p[$i]=='.')
				break;
			$people[] = substr($p,0,$i);
			$p = substr_replace($p, '', 0, $i+1);
			$i = 0;
		}
		if(count($people) == 0 ){
			$people[0] = '0';
		}
		$dateFrom = $_REQUEST["dates"];
		$dateTo = $_REQUEST["datef"];
		
	$db_theatres = pg_connect("host=localhost port=5432 dbname=Theatres user=postgres password=1234");
						
	if(!$db_theatres){
		echo'No connection :(';
	}
	$return = '<div class="card card-block" style="width: 45rem;"> ';
	$query = "SELECT per.name, pl.play_date, pl.play_time, per.description, pl.price, t.name, ppl.name, ppl.surname
					FROM play pl
					INNER JOIN performance per ON per.per_id = pl.per_id
					INNER JOIN theater t ON t.tid = pl.tid
					LEFT OUTER JOIN Perf_prod pp ON pp.per_id = per.per_id
					LEFT OUTER JOIN Person ppl ON ppl.pid = pp.pid
					WHERE t.city='".$city."'
					AND ( t.tid=".$theatre." OR per.per_id=".$performance.")
					AND pl.play_date>'".$dateFrom."'
					AND pl.play_date<'".$dateTo."' "; 
	if($people[0] != '0' ){
		$query = $query."
					AND pl.sid IN (
					SELECT S.sid FROM play S 
					LEFT OUTER JOIN a_p ap ON ap.sid = S.sid 
					LEFT OUTER JOIN m_p mp ON mp.sid = S.sid
					LEFT OUTER JOIN dg_p dgp ON dgp.sid = S.sid
					LEFT OUTER JOIN mg_p mgp ON mgp.sid = S.sid
					LEFT OUTER JOIN Perf_prod prod ON prod.per_id = S.per_id
					LEFT OUTER JOIN Perf_scen scen ON scen.per_id = S.per_id
					WHERE ";
	for($i = 0; $i < count($people); $i++){
		if($people[$i][strlen($people[$i])-1] == 'm')
		$query = $query."
					mgp.group_id = ".substr($people[$i],0,strlen($people[$i])-1)."
					";
		else
		if($people[$i][strlen($people[$i])-1] == 'd')
		$query = $query."
					dgp.dgroup_id = ".substr($people[$i],0,strlen($people[$i])-1)."
					";
		else
		$query = $query."
				( ap.pid = ".$people[$i]." OR mp.pid = ".$people[$i]." OR prod.pid = ".$people[$i]." 
				 OR scen.pid = ".$people[$i]." )
					";
					
		if($i != count($people)-1)
			$query = $query." OR ";
	}
		$query = $query."			
					)";
	}/**/
	$result = pg_query($db_theatres, $query);
	while($row = pg_fetch_row($result)){
		$return = $return.'<h4 class="card-title">'.$row[0].'</h4>
					<p class="card-text"> ('.$row[6].' '.$row[7].') </p>
					<p class="card-text">'.$row[1].'</p>
					<p class="card-text">'.$row[2].'</p>
					<p class="card-text">'.$row[3].'</p>
					<p class="card-text">Price: '.$row[4].'</p>
					<p class="card-text"><small class="text-muted">'.$row[5].'</small></p> ';
		$return = $return.'</div> <div class="card card-block" style="width: 45rem;">';
		
	}
	$return = $return.'</div>';
	
	echo $return;
?>
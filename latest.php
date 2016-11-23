<!DOCTYPE html>
<html lang="en">
  <head>
    <meta name="description" content="">
    <meta name="author" content="">
	
    <title>Wellcome page</title>
	
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/css/bootstrap.min.css" integrity="sha384-AysaV+vQoT3kOAXZkl02PThvDr8HYKPZhNT5h/CXfBThSRXQ6jW5DO2ekP5ViFdi" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/css/bootstrap-datepicker.min.css">
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js" integrity="sha384-3ceskX3iaEnIogmQchP8opvBy3Mi7Ce34nWjpBIwVTHfGYWQS9jwHDVRnpKKHJg7" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.3.7/js/tether.min.js" integrity="sha384-XTs3FgkjiBgo8qjEjBk0tGmf3wPrWtA6coPfQDfFEY8AnYJwjalXCiosYRBIBZX8" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/js/bootstrap.min.js" integrity="sha384-BLiI7JTZm+JWlgKa0M0kGRpJbF2J8q+qreVrKBC47e3K6BW78kGLrCkeRX6I9RoK" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/locales/bootstrap-datepicker.ru.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/js/bootstrap-datepicker.min.js"></script>
	
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
	<!-- Custom styles for this template -->
    <link rel="stylesheet" type="text/css" href="./style/styles.css" >
	<script src="./scripts/scripts.js"></script>
  </head>

  <body>
  <div class="container">
	  <nav class="navbar navbar-light bg-faded">
			<a class="navbar-brand" href="./index.php">Navbar</a>
			<ul class="nav navbar-nav" id="navigation">
				<li class="nav-item">
					<a class="nav-link" href="./index.php">Home</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="./future.php">Future events</a>
				</li>
				<li class="nav-item active">
					<a class="nav-link" href="./latest.php">Latest events</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="./grades.php">Grades</a>
				</li>
			</ul>
			<ul class="nav navbar-nav float-xs-right">
				<li class="nav-item">
					<select class="form-control" id="grade" name="grade">
						<?php
							$db_theatres = pg_connect("host=localhost port=5432 dbname=Theatres user=postgres password=1234");
							
							if(!$db_theatres){
								echo'No connection :(';
							}
							$query = "SELECT login FROM Viewer";
							$result = pg_query($db_theatres, $query);
							while($row = pg_fetch_row($result)){
								echo '<option value="'.$row[0].'">' .$row[0].' </option> ';
							}
							pg_close($db_theatres);
						?>													
					</select>
				</li>
			</ul>
			
		
		</nav>
	</div>
	
	<div class="container" id="future">
		<div class="row text-left">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<h2>Find plays passed</h2>
				<div class="form-group">
					<label for="city-select">City: </label>
					<select class="form-control" id="city-select" onchange="showTheatres(this.value); 
																			showPerfomances(this.value);">
						<?php
							$db_theatres = pg_connect("host=localhost port=5432 dbname=Theatres user=postgres password=1234");
							
							if(!$db_theatres){
								echo'No connection :(';
							}
							echo'<option value="">Select city, please...</option>';
							$query = "SELECT DISTINCT T.city FROM theater T";
							$result = pg_query($db_theatres, $query);
							while($row = pg_fetch_row($result)){
								echo '<option value="'.$row[0].'">' .$row[0].' </option> ';
							}
							pg_close($db_theatres);
						?>
					</select>
				</div>
				
				<ul  class="nav nav-tabs" role="tablist" id="myTab">
					<li class="nav-item">
						<a class="nav-link active" href="#theater" data-toggle="tab" role="tab" id="theater-tab" aria-controls="theater">Theatres</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#performances" data-toggle="tab" role="tab" id="perf-tab" aria-controls="performances">Performances</a>
					</li>
				</ul>
				
				<div class="tab-content" id="myTabContent">
					<div class="tab-pane fade active in" id="theater" role="tabpanel" aria-expanded="true">
						<div class="form-group">
							<label for="theatre-select">Theatres:</label>
							<select class="form-control" id="theatre-select" onchange="showActors(this.value)">

							</select>
						</div>
					</div>
					<div class="tab-pane fade" id="performances" role="tabpanel" aria-expanded="false">
						<div class="form-group">
							<label for="perf-select">Performances:</label>
							<select class="form-control" id="perf-select" onchange="showActorsInPerfomance(this.value)">

							</select>
						</div>
					</div>
				</div>
				<div class="form-group row">
					<label for="date-from2" class="col-md-1">From:</label>
					<div class="col-md-3">
						<input type="text" id="date-from2" class="form-control">
					</div>
					<label for="date-to2" class="col-md-1">To:</label>
					<div class="col-md-3">
						<input type="text" id="date-to2" class="form-control">
					</div>
				</div>
				
				<div class="form-group">
					<label for="member-select">Participated:</label>
					<select multiple class="form-control" multiple id="member-select">
						
					</select>       
				</div>
				
				<div class="form-group">
					<button type="button" class="btn btn-default" id="search" onclick="showPlaybill()" >Search</button>
				</div>
			
			
			<div class="" id="playbills">
				
			</div>
			</div>
			<div class="col-md-2"></div>
		</div>
	
	</div>
    
  </body>
</html>

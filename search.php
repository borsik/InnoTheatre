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

	<nav class="navbar navbar-light bg-faded">
		<a class="navbar-brand" href="#">Navbar</a>
		<ul class="nav navbar-nav" id="navigation">
			<li class="nav-item active">
				<a class="nav-link" href="#home">Home <span class="sr-only">(current)</span></a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="#future">Future events</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="#latest">Latest events</a>
			</li>
		</ul>
		<form class="form-inline  float-xs-right">
			<div class="form-group">
				<label class="sr-only" for="login">Login</label>
				<input type="email" class="form-control" id="login" placeholder="Enter login">
			</div>
			<div class="form-group">
				<label class="sr-only" for="password">Password</label>
				<input type="password" class="form-control" id="password" placeholder="Password">
			</div>
			<button type="submit" class="btn btn-primary">Sign in</button>
		</form>
	
	</nav>

    <div class="container" id="home">
		<div class="jumbotron">
			<h1>Welcome</h1>
			<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.</p>
			<button type="submit" class="btn btn-primary">Find future events</button>
		</div>
    </div>
	
	<div class="container" id="future">
		<div class="row text-left">
			<div class="col-md-3"></div>
			<div class="col-md-6">
				<h2>Find plays</h2>
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
				
				<ul  class="nav nav-tabs" role="tablist">
					<li class="nav-item">
						<a class="nav-link active" href="#1a" data-toggle="tab" role="tab" id="theater-tab">Theatres</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#2a" data-toggle="tab" role="tab" id="perf-tab">Performances</a>
					</li>
				</ul>
				
				<div class="tab-content">
					<div class="tab-pane active" id="1a" role="tabpanel">
						<div class="form-group">
							<label for="theatre-select">Theatres: </label>
							<select class="form-control" id="theatre-select" onchange="showActors(this.value)">

							</select>
						</div>
					</div>
					<div class="tab-pane" id="2a" role="tabpanel">
						<div class="form-group">
							<label for="perf-select">Performances: </label>
							<select class="form-control" id="perf-select" onchange="">

							</select>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label for="date-from">From:</label>
					<input type="text" id="date-from">
				</div>
				<div class="form-group">
					<label for="date-to">To:</label>
					<input type="text" id="date-to">
				</div>
				<div class="form-group">
					<label>Weekdays:</label>
					<label class="checkbox-inline"><input type="checkbox" value="">Mon</label>
					<label class="checkbox-inline"><input type="checkbox" value="">Tue</label>
					<label class="checkbox-inline"><input type="checkbox" value="">Wed</label>
					<label class="checkbox-inline"><input type="checkbox" value="">Thu</label>
					<label class="checkbox-inline"><input type="checkbox" value="">Fri</label>
					<label class="checkbox-inline"><input type="checkbox" value="">Sat</label>
					<label class="checkbox-inline"><input type="checkbox" value="">Sun</label>        
				</div>
				<div class="form-group">
					<label for="member-select">Participated:</label>
					<select multiple class="form-control" multiple id="member-select">

					</select>       
				</div>
				
				<div class="form-group">
					<button type="button" class="btn btn-default" id="search">Search</button>
				</div>
			</div>
			<div class="col-md-3"></div>
		</div>
	
	</div>
    
  </body>
</html>

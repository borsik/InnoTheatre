<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Theatres frontpage</title>
	<meta name="description" content="The Innopolis Theatre Project">
	<meta name="author" content="MS1-1 Team">
	
	 <!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/css/bootstrap.min.css" integrity="sha384-AysaV+vQoT3kOAXZkl02PThvDr8HYKPZhNT5h/CXfBThSRXQ6jW5DO2ekP5ViFdi" crossorigin="anonymous">
	<script src="/scripts/scripts.js"></script>
	
	<script>
		jQuery(function() {
			$('#date').datepicker({dateFormat: "dd.mm.yy"});
		});
	</script>
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
					<a class="nav-link" href="./future">Future events</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="./latest.php">Latest events</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="./grades.php">Grades</a>
				</li>
				<li class="nav-item active">
					<a class="nav-link" href="./add.php">Add</a>
				</li>
			</ul>
		</nav>
	</div>


<div class="container" id="add">
    <div class="row text-left">
        <div class="col-md-3"></div>
        <div class="col-md-6">
		
			<div class="card card-block" id="addPersonCard">
				<form method="post" id="addPerson" action="javascript:void(null);" onsubmit="addPerson()" id="addPerson">
					<h4 class="card-title">Add person</h4>
					<div class="form-group">
						<div class="form-group row">
							<label for="firstname" class="col-xs-2 col-form-label">Firstname:</label>                    
							<div class="col-xs-10">
								<input type="text" class="form-control" id="firstname" name="firstname">
							</div>
						</div>
						<div class="form-group row">
							<label for="secondname" class="col-xs-2 col-form-label">Secondname:</label>
							<div class="col-xs-10">
								<input type="text" class="form-control" id="secondname" name="secondname">
							</div>
						</div>
						
						<div class="form-group row">
							<label for="position" class="col-xs-2 col-form-label">Position:</label>
							<div class="col-xs-10">
								<select class="form-control" id="role" name="position">
										<option>Actor</option>
										<option>Musician</option>
										<option>Producer</option>
										<option>Scenarist</option>							
								</select>
							</div>										
						</div>
						
						<div class="form-group row">
							<label for="grade" class="col-xs-2 col-form-label">Grade:</label>
							<div class="col-xs-10">
								<select class="form-control" id="grade" name="grade">
										<option>1</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>	
										<option>5</option>										
								</select>
							</div>										
						</div>
						
						<div class="form-group">
							<button type="submit" class="btn btn-primary" id="add">Add actor</button>
						</div>
					</div>
				</form>
			</div>
			
			<div class="card card-block" id="addPlayCard">
				<form method="post" id="addPlay" action="javascript:void(null);" onsubmit="addPlay()" id="addPlay">
					<h4 class="card-title">Add play</h4>
					<div class="form-group">
						<div class="form-group row">
							<label for="performance" class="col-xs-2 col-form-label">Performance:</label>
							<div class="col-xs-10">
								<select class="form-control" name="performance">
									<?php
										$db_theatres = pg_connect("host=localhost port=5432 dbname=Theatres user=postgres password=1234");
										
										if(!$db_theatres){
											echo'No connection :(';
										}
										echo'<option value="">Select performance, please...</option>';
										$query = "SELECT per_id, name FROM Performance";
										$result = pg_query($db_theatres, $query);
										while($row = pg_fetch_row($result)){
											echo '<option value="'.$row[0].'">' .$row[1].' </option> ';
										}
										pg_close($db_theatres);
									?>											
								</select>
							</div>										
						</div>
						
						<div class="form-group row">
							<label for="city" class="col-xs-2 col-form-label">City:</label>
							<div class="col-xs-10">
								<select class="form-control" name="city" onchange="showTheatres1(this.value)">
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
						</div>
						
						<div class="form-group row">
							<label for="theater" class="col-xs-2 col-form-label">Theater:</label>
							<div class="col-xs-10">
								<select class="form-control" name="theater"  id="theatre-select1">
							
								</select>
							</div>										
						</div>
					
						<div class="form-group row">
							<label for="date" class="col-xs-2 col-form-label">Date:</label>                    
							<div class="col-xs-10">
								<input type="date" class="form-control" name="date" id="date">
							</div>
						</div>
						
						<div class="form-group row">
							<label for="time" class="col-xs-2 col-form-label">Time:</label>
							<div class="col-xs-10">
								<input type="time" class="form-control" name="time">
							</div>			
						</div>
						
						<div class="form-group row">		
							<label for="price" class="col-xs-2 col-form-label">Price:</label>
							<div class="col-xs-10">
								<input type="number" class="form-control" name="price">
							</div>
						</div>
						
						<div class="form-group row">
							<label for="description" class="col-xs-2 col-form-label">Description:</label>
							<div class="col-xs-10">
								<input type="text" class="form-control" name="description">
							</div>
						</div>		
						
						<div class="form-group">
							<button type="submit" class="btn btn-primary" id="add">Add play</button>
						</div>
					</div>
				</form>
			</div>
			
			<div class="card card-block" id="addUserCard">
				<form method="post" id="addUser" action="javascript:void(null);" onsubmit="addUser()" id="addUser">
					<h4 class="card-title">Add user</h4>
					<div class="form-group">
						<div class="form-group row">
							<label for="login" class="col-xs-2 col-form-label">Login:</label>                    
							<div class="col-xs-10">
								<input type="text" class="form-control" id="login" name="login">
							</div>
						</div>
						<div class="form-group row">
							<label for="password" class="col-xs-2 col-form-label">Password:</label>
							<div class="col-xs-10">
								<input type="text" class="form-control" id="password" name="password">
							</div>
						</div>			
	
						<div class="form-group">
							<button type="submit" class="btn btn-primary" id="add">Add user</button>
						</div>
					</div>
				</form>
			</div>
			
        </div>
        <div class="col-md-3"></div>
    </div>
</div>

<!-- jQuery first, then Tether, then Bootstrap JS. -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js" integrity="sha384-3ceskX3iaEnIogmQchP8opvBy3Mi7Ce34nWjpBIwVTHfGYWQS9jwHDVRnpKKHJg7" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.3.7/js/tether.min.js" integrity="sha384-XTs3FgkjiBgo8qjEjBk0tGmf3wPrWtA6coPfQDfFEY8AnYJwjalXCiosYRBIBZX8" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/js/bootstrap.min.js" integrity="sha384-BLiI7JTZm+JWlgKa0M0kGRpJbF2J8q+qreVrKBC47e3K6BW78kGLrCkeRX6I9RoK" crossorigin="anonymous"></script>
</body>
</html>
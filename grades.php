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
					<a class="nav-link" href="./future">Future events</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="./latest.php">Latest events</a>
				</li>
				<li class="nav-item active">
					<a class="nav-link" href="./grades.php">Grades</a>
				</li>
			</ul>
			
		
		</nav>
	</div>
	
	<div class="container" id="future">
		<div class="row text-left">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<ul  class="nav nav-tabs" role="tablist" id="myTab">
					<li class="nav-item">
						<a class="nav-link active" href="#actors" data-toggle="tab" role="tab" aria-controls="actors">Actors</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#producer" data-toggle="tab" role="tab" aria-controls="producer">Producers</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#scenarists" data-toggle="tab" role="tab" aria-controls="scenarists">Scenarists</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#musicians" data-toggle="tab" role="tab" aria-controls="musicians">Musicians</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#performances" data-toggle="tab" role="tab" aria-controls="performances">Performances</a>
					</li>
				</ul>
				
				<div class="tab-content" id="myTabContent">
					<div class="tab-pane fade active in" id="actors" role="tabpanel" aria-expanded="true">
						<div class="form-group">
							<label for="actors">Actors:</label>
							<select class="form-control" name="actors" onchange="showActorGrade(this.value)">
								<?php
										$db_theatres = pg_connect("host=localhost port=5432 dbname=Theatres user=postgres password=1234");
										
										if(!$db_theatres){
											echo'No connection :(';
										}									
										$query = "SELECT a.pid, p.name, p.surname FROM Actor a, Person p WHERE a.pid = p.pid";
										$result = pg_query($db_theatres, $query);
										while($row = pg_fetch_row($result)){
											echo '<option value="'.$row[0].'">' .$row[1]. " " .$row[2].' </option> ';
										}
										pg_close($db_theatres);
									?>					
							</select>
						</div>
					</div>
					<div class="tab-pane fade" id="producer" role="tabpanel" aria-expanded="false">
						<div class="form-group">
							<label for="producer">Producers:</label>
							<select class="form-control" name="producer" onchange="showProducerGrade(this.value)">
								<?php
										$db_theatres = pg_connect("host=localhost port=5432 dbname=Theatres user=postgres password=1234");
										
										if(!$db_theatres){
											echo'No connection :(';
										}									
										$query = "SELECT a.pid, p.name, p.surname FROM Producer a, Person p WHERE a.pid = p.pid";
										$result = pg_query($db_theatres, $query);
										while($row = pg_fetch_row($result)){
											echo '<option value="'.$row[0].'">' .$row[1]. " " .$row[2].' </option> ';
										}
										pg_close($db_theatres);
									?>		
							</select>
						</div>
					</div>
					<div class="tab-pane fade" id="scenarists" role="tabpanel" aria-expanded="false">
						<div class="form-group">
							<label for="scenarists">Scenarists:</label>
							<select class="form-control" name="scenarists" onchange="showScenaristGrade(this.value)">
									<?php
										$db_theatres = pg_connect("host=localhost port=5432 dbname=Theatres user=postgres password=1234");
										
										if(!$db_theatres){
											echo'No connection :(';
										}									
										$query = "SELECT a.pid, p.name, p.surname FROM Scenarist a, Person p WHERE a.pid = p.pid";
										$result = pg_query($db_theatres, $query);
										while($row = pg_fetch_row($result)){
											echo '<option value="'.$row[0].'">' .$row[1]. " " .$row[2].' </option> ';
										}
										pg_close($db_theatres);
									?>		
							</select>
						</div>
					</div>
					<div class="tab-pane fade" id="musicians" role="tabpanel" aria-expanded="false">
						<div class="form-group">
							<label for="musicians">Musicians:</label>
							<select class="form-control" name="musicians"  onchange="showMusicianGrade(this.value)">
								<?php
										$db_theatres = pg_connect("host=localhost port=5432 dbname=Theatres user=postgres password=1234");
										
										if(!$db_theatres){
											echo'No connection :(';
										}									
										$query = "SELECT a.pid, p.name, p.surname FROM Musician a, Person p WHERE a.pid = p.pid";
										$result = pg_query($db_theatres, $query);
										while($row = pg_fetch_row($result)){
											echo '<option value="'.$row[0].'">' .$row[1]. " " .$row[2].' </option> ';
										}
										pg_close($db_theatres);
									?>		
							</select>
						</div>
					</div>
					<div class="tab-pane fade" id="performances" role="tabpanel" aria-expanded="false">
						<div class="form-group">
							<label for="performances">Performances:</label>
							<select class="form-control" name="performances"  onchange="showPerformanceGrade(this.value)">
								<?php
										$db_theatres = pg_connect("host=localhost port=5432 dbname=Theatres user=postgres password=1234");
										
										if(!$db_theatres){
											echo'No connection :(';
										}									
										$query = "SELECT per_id, name FROM Performance";
										$result = pg_query($db_theatres, $query);
										while($row = pg_fetch_row($result)){
											echo '<option value="'.$row[0].'">' .$row[1]. ' </option> ';
										}
										pg_close($db_theatres);
									?>		
							</select>
						</div>
					</div>
					
				</div>
				
				<div id="grade">
					
				</div>
				
			</div>
			<div class="col-md-2"></div>
		</div>
	
	</div>
    <script>
		function showActorGrade(value){
			var xmlhttp = new XMLHttpRequest();
			xmlhttp.onreadystatechange = function() {
				if(this.readyState == 4 && this.status == 200){
					document.getElementById("grade").innerHTML = this.responseText;
				}
			};
			xmlhttp.open("GET", "showActorGrade.php?t=" + value, true);
			xmlhttp.send();
		}
		
		function showMusicianGrade(value){
			var xmlhttp = new XMLHttpRequest();
			xmlhttp.onreadystatechange = function() {
				if(this.readyState == 4 && this.status == 200){
					document.getElementById("grade").innerHTML = this.responseText;
				}
			};
			xmlhttp.open("GET", "showMusicianGrade.php?t=" + value, true);
			xmlhttp.send();
		}
		
		function showProducerGrade(value){
			var xmlhttp = new XMLHttpRequest();
			xmlhttp.onreadystatechange = function() {
				if(this.readyState == 4 && this.status == 200){
					document.getElementById("grade").innerHTML = this.responseText;
				}
			};
			xmlhttp.open("GET", "showProducerGrade.php?t=" + value, true);
			xmlhttp.send();
		}
		
		function showScenaristGrade(value){
			var xmlhttp = new XMLHttpRequest();
			xmlhttp.onreadystatechange = function() {
				if(this.readyState == 4 && this.status == 200){
					document.getElementById("grade").innerHTML = this.responseText;
				}
			};
			xmlhttp.open("GET", "showScenaristGrade.php?t=" + value, true);
			xmlhttp.send();
		}
		
		function showPerformanceGrade(value){
			var xmlhttp = new XMLHttpRequest();
			xmlhttp.onreadystatechange = function() {
				if(this.readyState == 4 && this.status == 200){
					document.getElementById("grade").innerHTML = this.responseText;
				}
			};
			xmlhttp.open("GET", "showPerformanceGrade.php?t=" + value, true);
			xmlhttp.send();
		}
	
	</script>
  </body>
</html>

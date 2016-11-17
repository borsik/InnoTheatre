<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Theatres frontpage</title>
	<meta name="description" content="The Innopolis Theatre Project">
	<meta name="author" content="MS1-1 Team">
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/css/bootstrap-datepicker.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.11.2/css/bootstrap-select.min.css">
	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/locales/bootstrap-datepicker.ru.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/js/bootstrap-datepicker.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.11.2/js/bootstrap-select.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.11.2/js/i18n/defaults-*.min.js"></script>
	
	<script src="/scripts/scripts.js"></script>
</head>
<body>

<script>
function showTheatres(value){
	var xmlhttp = new XMLHttpRequest();
	xmlhttp.onreadystatechange = function() {
		if(this.readyState == 4 && this.status == 200){
			document.getElementById("theatre-select").innerHTML = this.responseText;
		}
	};
	xmlhttp.open("GET", "showTheatres.php?t=" + value, true);
	xmlhttp.send();
}

function showPerfomances(value){
	var xmlhttp = new XMLHttpRequest();
	xmlhttp.onreadystatechange = function() {
		if(this.readyState == 4 && this.status == 200){
			document.getElementById("perf-select").innerHTML = this.responseText;
		}
	};
	xmlhttp.open("GET", "showPerfomances.php?t=" + value, true);
	xmlhttp.send();
}
</script>

<div class="container-fluid">
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
            <ul  class="nav nav-pills">
                <li class="active">
                    <a  href="#1a" data-toggle="tab">Theatres</a>
                </li>
                <li><a href="#2a" data-toggle="tab">Performances</a>
                </li>
            </ul>
            <div class="tab-content clearfix">
                <div class="tab-pane active" id="1a">
                    <div class="form-group">
                        <label for="theatre-select">Theatres: </label>
                        <select class="form-control" id="theatre-select">

                        </select>
                    </div>
                </div>
                <div class="tab-pane" id="2a">
                    <div class="form-group">
                        <label for="perf-select">Performances: </label>
                        <select class="form-control" id="perf-select">

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
                <label>В дни:</label>
                <label class="checkbox-inline"><input type="checkbox" value="">Mon</label>
                <label class="checkbox-inline"><input type="checkbox" value="">Tue</label>
                <label class="checkbox-inline"><input type="checkbox" value="">Wed</label>
                <label class="checkbox-inline"><input type="checkbox" value="">Thu</label>
                <label class="checkbox-inline"><input type="checkbox" value="">Fri</label>
                <label class="checkbox-inline"><input type="checkbox" value="">Sat</label>
                <label class="checkbox-inline"><input type="checkbox" value="">Sun</label>        
            </div>
            <div class="form-group">
                <label for="member">Participated:</label>
                <select class="selectpicker" multiple id="member">
                    <optgroup label="Актеры">
                        <option>Сергей Бодров</option>
                        <option>Данила Козловский</option>
                        <option>Екатерина Шпица</option>
                    </optgroup>
                    <optgroup label="Продюсеры">
                        <option>Сергей Михалков</option>
                        <option>Мел Брукс</option>
                        <option>Михаил Бабаханов</option>
                    </optgroup>
                </select>       
            </div>
            
            <div class="form-group">
                <button type="button" class="btn btn-default" id="search">Search</button>
            </div>
        </div>
        <div class="col-md-3"></div>
    </div>
	
	<script>
		$('#date-from').datepicker().datepicker("setDate", new Date());
		$('#date-to').datepicker().datepicker("setDate", new Date(+new Date + 12096e5));
	</script>
</div>

</body>
</html>

$( function() {
    $('#date-from').datepicker().datepicker("setDate", new Date());
	$('#date-to').datepicker().datepicker("setDate", new Date(+new Date + 12096e5));
	
	$('#perf-tab a[href="#2a"]').tab('show')
  } );
  
$("#navigation a").on('click', function(e) {
	e.preventDefault();
	$('.container').hide();
	$('#' + $(this).attr('href')).show();
	
});


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

function showActors(value) {
	var xmlhttp = new XMLHttpRequest();
	xmlhttp.onreadystatechange = function() {
		if(this.readyState == 4 && this.status == 200){
			document.getElementById("member-select").innerHTML = this.responseText;
		}
	};
	xmlhttp.open("GET", "showPeopleInTheatre.php?t=" + value, true);
	xmlhttp.send();
}
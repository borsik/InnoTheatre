	jQuery(document).ready(function() {
		$('#date-from').datepicker({dateFormat: "dd.mm.yy"}).datepicker("setDate", new Date());
		$('#date-to').datepicker({dateFormat: "dd.mm.yy"}).datepicker("setDate", new Date(+new Date + 12096e5));
		$('#date').datepicker({dateFormat: "dd.mm.yy"});
	});
	  
	jQuery(document).ready(function() {
		jQuery('#myTab a:last').tab('show')
	});

	jQuery(document).ready(function($) {
		$(".clickable-row").click(function() {
			window.location = $(this).data("href");
		});
	});

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

	function showTheatres1(value){
		var xmlhttp = new XMLHttpRequest();
		xmlhttp.onreadystatechange = function() {
			if(this.readyState == 4 && this.status == 200){
				document.getElementById("theatre-select1").innerHTML = this.responseText;
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
	
	function showActorsInPerfomance(value) {
		var xmlhttp = new XMLHttpRequest();
		xmlhttp.onreadystatechange = function() {
			if(this.readyState == 4 && this.status == 200){
				document.getElementById("member-select").innerHTML = this.responseText;
			}
		};
		xmlhttp.open("GET", "showPeopleInPerformance.php?t=" + value, true);
		xmlhttp.send();
	}

	function addPerson() {
		var msg = $('#addPerson').serialize();
		
		$.ajax({
			type: 'POST',
			url: 'addPerson.php',
			data: msg,
			success: function(data) {
				$('.form-control').val("");
			},
			error:  function(xhr, str){
				alert('Возникла ошибка: ' + xhr.responseCode);
			}
		});
	}

	function addPlay() {
		var msg = $('#addPlay').serialize();
		$.ajax({
			type: 'POST',
			url: 'addPlay.php',
			data: msg,
			success: function(data) {
				$('.form-control').val("");
			},
			error:  function(xhr, str){
				alert('Возникла ошибка: ' + xhr.responseCode);
			}
		});
	}

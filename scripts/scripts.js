$(function() {
    $('#date-from').datepicker({dateFormat: "dd.mm.yy"}).datepicker("setDate", new Date());
	$('#date-to').datepicker({dateFormat: "dd.mm.yy"}).datepicker("setDate", new Date(+new Date + 12096e5));
});
  
jQuery(function() {
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

function showPlaybill() {
	var city = document.getElementById("city-select").value;
	var len= document.getElementById("member-select").options.length;
    var people = "";
    for (var n = 0; n < len; n++)
    {
      if (document.getElementById("member-select").options[n].selected==true)
      {
       people= people + document.getElementById("member-select").options[n].value + "," ;
      }
    }
	var dateFrom = document.getElementById("date-from").value;
	var dateTo = document.getElementById("date-to").value;
	people = people + ".";
	var active = document.getElementsByClassName("active")[2];
	var theatre = -1;
	var performance = -1;
	if(active.id == "theater")
			theatre = document.getElementById("theatre-select").value;
	if(active.id == "performances")
			performance = document.getElementById("perf-select").value;
	
	var xmlhttp = new XMLHttpRequest();
	xmlhttp.onreadystatechange = function() {
		if(this.readyState == 4 && this.status == 200){
			alert(this.responseText);
			document.getElementById("playbills").innerHTML = this.responseText;
		}
	};
	xmlhttp.open("GET", "showPlaybill.php?c=" + city + "&t=" + theatre + 
					"&p=" + performance + "&ppl=" + people  + "&dates=" + dateFrom + "&datef=" + dateTo, true);
	xmlhttp.send();
}
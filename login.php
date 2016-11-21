<?php
	include("config.php");
	session_start();
	
	if($_SERVER["REQUEST_METHOD"] == "POST") {
		$user = pg_escape_string($_POST['user']);
		$pass = pg_escape_string($_POST['pass']);
		
		$sql = "SELECT login FROM viewer WHERE login = '$login' AND password = '$pass'";
		$result = pg_query($db, $sql);
		$row = pg_fetch_array($result);
		
		$count = pg_num_rows($result);
		
		if($count == 1) {
			session_register('user');
			$_SESSION['login_user'] = $user;
			
		} else {
			$error = "Not success";
		}
		
	}
?>
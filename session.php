<?php
	include('config.php');
	session_start();
	
	$user_check = $_SESSION['login_user'];
	$ses_sql = pg_query($db, "SELECT login FROM viewer WHERE login = '$login' AND password = '$pass'");
	$row = pg_fetch_array($ses_sql);
	$login_session = $row['login'];
	
	if(!isset($_SESSION['login_user'])) {
		header("location:index.php");
	}
?>
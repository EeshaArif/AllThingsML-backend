<?php

	require __DIR__ . '/vendor/autoload.php';
	$dotenv = Dotenv\Dotenv::createImmutable(__DIR__);
	$dotenv->load();
	//Allows CORS (cross domain requests)
	header("Access-Control-Allow-Origin: *");
	
	//Set all the parameters for MySql
	$user_name = $_ENV['USERNAME'];
	$password = $_ENV['PASSWORD'];
	$database = $_ENV['DATABASE'];
	$server = $_SERVER['SERVER'];
	
	//Connect to MySql
	$db_handle = mysqli_connect($server, $user_name, $password);
	$db_found = mysqli_select_db($db_handle, $database);
	if ($db_found) { /*print "<br/>Database Found: " . $database;*/ }
	else { print "<br/>Database NOT Found"; }
?>



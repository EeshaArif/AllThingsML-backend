<?php

require __DIR__ . '/vendor/autoload.php';
$dotenv = Dotenv\Dotenv::createImmutable(__DIR__);
$dotenv->load();
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: GET,POST,PUT,DELETE");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

//Set all the parameters for MySql
$user_name = $_ENV['USERNAME'];
$password = $_ENV['PASSWORD'];
$database = $_ENV['DATABASE'];
$server = $_SERVER['SERVER'];

//Connect to MySql
$db_handle = mysqli_connect($server, $user_name, $password);
mysqli_set_charset($db_handle, 'utf8');
$db_found = mysqli_select_db($db_handle, $database);
if ($db_found) { /*print "<br/>Database Found: " . $database;*/
} else {
	print "<br/>Database NOT Found";
}

<?php include __dir__ . "/../controllers/competitionsController.php";

//By default the resulting value will be an error, until it change by the correct one
$value = "An error has occurred (is this action included in the possible actions?)";

//Check if the call is correct and if the parameter of the call is included in the possible URL's
$method = $_SERVER['REQUEST_METHOD'];
switch ($method) {
	case "GET":
		$value = get_competitions_list();
		break;

	case "POST":
		$value = post_competition();
		break;

	case "PUT":
		$value = update_competition();
		break;

	case "DELETE":
		$value = delete_competition();
		break;
}
exit(json_encode(array("competitions_list" => $value)));

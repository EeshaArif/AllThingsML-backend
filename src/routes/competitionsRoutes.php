<?php include __dir__ . "/../controllers/competitionsController.php";

$value = "An error has occurred processing request";

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

<?php include __dir__ . "/../controllers/questionsController.php";

$value = "An error has occurred while processing request";

$method = $_SERVER['REQUEST_METHOD'];
switch ($method) {
	case "GET":
		$value = get_questions_list();
		break;
	case "POST":
		$value = post_question();
		break;
	case "DELETE":
		$value = delete_question();
		break;
}
exit(json_encode(array("questions_list" => $value)));

<?php include __dir__."/../controllers/coursesController.php"; 

$value = "An error has occurred while processing request";

$method = $_SERVER['REQUEST_METHOD'];
switch ($method) {
	case "GET":
		$value = get_courses_list();
		break;

	case "POST":
		$value = post_course();
		break;

	case "PUT":
		$value = update_course();
		break;

	case "DELETE":
		$value = delete_course();
		break;
}
exit(json_encode(array("courses_list" => $value)));

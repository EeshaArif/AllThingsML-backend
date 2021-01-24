<?php include __dir__ . "/../controllers/competitionsController.php";

//By default the resulting value will be an error, until it change by the correct one
$value = "An error has occurred (is this action included in the possible actions?)";

//Check if the call is correct and if the parameter of the call is included in the possible URL's
$method = $_SERVER['REQUEST_METHOD'];
switch ($method) {
	case "GET":
		$value = get_competitions_list();
		exit(json_encode(array("competitions_list" => $value)));
		break;

	case "POST":
		$file = file_get_contents("php://input", true);
		$data = (array) json_decode($file);
		$competition = new \stdClass();
		if (isset($data['name']) && isset($data['description']) && isset($data['prize']) && isset($data['start_date']) && isset($data['end_date']) && isset($data['link']) && isset($data['host']) && isset($data['link'])) {
			$competition->name = $data['name'];
			$competition->description = $data['description'];
			$competition->prize = $data['prize'];
			$competition->start_date = $data['start_date'];
			$competition->end_date = $data['end_date'];
			$competition->image = $data['image'];
			$competition->host = $data['host'];
			$competition->link = $data['link'];
			$value = post_competition($competition);
		} else {
			$value = "could not post competition, all values not set";
		}
		exit(json_encode(array("competitions_list" => $value)));
		break;

	case "PUT":
		$file = file_get_contents("php://input", true);
		$data = (array) json_decode($file);
		$competition = new \stdClass();
		if (isset($data['id']) && isset($data['name']) && isset($data['description']) && isset($data['prize']) && isset($data['start_date']) && isset($data['end_date']) && isset($data['link']) && isset($data['host']) && isset($data['link'])) {
			$competition->id = $data['id'];
			$competition->name = $data['name'];
			$competition->description = $data['description'];
			$competition->prize = $data['prize'];
			$competition->start_date = $data['start_date'];
			$competition->end_date = $data['end_date'];
			$competition->image = $data['image'];
			$competition->host = $data['host'];
			$competition->link = $data['link'];
			$value = update_competition($competition);
		} else {
			$value = "could not update competition, all values not set";
		}
		exit(json_encode(array("competitions_list" => $value)));
		break;

	case "DELETE":
		$file = file_get_contents("php://input", true);
		$data = (array) json_decode($file);;
		if (isset($data['id'])) {
			$value = delete_competition($data['id']);
		} else {
			$value = "could not delete competition, id not given";
		}
		exit(json_encode(array("competitions_list" => $value)));
		break;
}

exit(json_encode($value));

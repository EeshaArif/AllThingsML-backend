<?php include __dir__ . "/../controllers/communitiesController.php";

$value = "An error has occurred while processing request";

$method = $_SERVER['REQUEST_METHOD'];
switch ($method) {
	case "GET":
		if (isset($_GET['topic'])) {
			$value = get_community_of_topic($_GET['topic']);
			break;
		}
		$value = get_communities_list();
		break;
}


exit(json_encode(array("communities_list" => $value)));

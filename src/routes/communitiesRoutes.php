<?php include __dir__ . "/../controllers/communitiesController.php";

$possible_actions = array("get_communities_list", "get_community");


$value = "An error has occurred (is this action included in the possible actions?)";


if (isset($_GET["action"]) && in_array($_GET["action"], $possible_actions)) {
	switch ($_GET["action"]) {
		case "get_communities_list":
			$value = get_communities_list();
			break;

		case "get_community":
			if (isset($_GET['topic'])) {
				$value = get_community_of_topic($_GET['topic']);
				break;
			}
	}
	exit(json_encode(array("communities_list" => $value)));
}

exit(json_encode($value));

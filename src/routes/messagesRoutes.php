<?php include __dir__ . "/../controllers/messagesController.php";

$value = "An error has occurred while processing request";

$method = $_SERVER['REQUEST_METHOD'];
switch ($method) {
	case "GET":
        if (isset($_GET['community_id'])) {
            $c_id = $_GET['community_id'];
            $value = get_messages_of_community($c_id);
        }else{
            $value = get_messages_list();
        }
        break;
	case "POST":
		$value = post_message();
		break;

}
exit(json_encode(array("messages_list" => $value)));




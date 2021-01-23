<?php include __dir__ . "/../controllers/messagesController.php";
//List of all the possible method calls from the URL
$possible_actions = array("get_messages_list");
$value = "An error has occurred (is this action included in the possible actions?)";

if (isset($_GET["action"]) && in_array($_GET["action"], $possible_actions)) {
    switch ($_GET["action"]) {

        case "get_messages_list":
            if (isset($_GET['community_id'])) {
                $c_id = $_GET['community_id'];
                $value = get_messages_of_community($c_id);
                exit(json_encode(array("messages_list" => $value)));
                break;
            }
            $value = get_messages_list();
            exit(json_encode(array("messages_list" => $value)));
            break;
    }
} else if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $file = file_get_contents("php://input", true);
    $data = (array) json_decode($file);
    $message = new \stdClass();
    if (isset($data['text']) && isset($data['owner']) && isset($data['c_id']) && isset($data['created_at'])) {
        $message->text = $data['text'];
        $message->owner = $data['owner'];
        $message->c_id = $data['c_id'];
        $message->created_at = $data['created_at'];
        $value = post_message($message);
    } else {
        $value = "could not post message, all values not set";
    }
    exit(json_encode(array("messages_list" => $value)));
}

exit(json_encode($value));

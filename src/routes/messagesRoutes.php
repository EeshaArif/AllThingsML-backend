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
}

exit(json_encode($value));

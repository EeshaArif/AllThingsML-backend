<?php include __dir__ . "/../controllers/answersController.php";
//List of all the possible method calls from the URL
$possible_actions = array("get_answers_list");
$value = "An error has occurred (is this action included in the possible actions?)";

if (isset($_GET["action"]) && in_array($_GET["action"], $possible_actions)) {
    switch ($_GET["action"]) {
        
        case "get_answers_list":
            if (isset($_GET['question_id'])) {
                $q_id = $_GET['question_id'];
                $value = get_answers_of_question($q_id);
                exit(json_encode(array("answers_list" => $value)));
                break;
            }
            $value = get_answers_list();
            exit(json_encode(array("answers_list" => $value)));
            break;
    }
}

exit(json_encode($value));

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
} else if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $file = file_get_contents("php://input", true);
    $data = (array) json_decode($file);
    $answer_ = new \stdClass();
    if (isset($data['answer']) && isset($data['answered_by']) && isset($data['created_at']) && isset($data['q_id'])) {
        $answer_->answer = $data['answer'];
        $answer_->answered_by = $data['answered_by'];
        $answer_->created_at = $data['created_at'];
        $answer_->q_id = $data['q_id'];
        $value = post_answer($answer_);
    } else {
        $value = "could not post answer, all values not set";
    }
    exit(json_encode(array("answers_list" => $value)));
}

exit(json_encode($value));

<?php include __dir__ . "/../controllers/answersController.php";

$value = "An error has occurred while processing request";

$method = $_SERVER['REQUEST_METHOD'];
switch ($method) {
    case "GET":
        if (isset($_GET['question_id'])) {
            $q_id = $_GET['question_id'];
            $value = get_answers_of_question($q_id);
            
        }else{
            $value = get_answers_list();
        }
        break;

    case "POST":
        $value = post_answer();
        break;

    case "DELETE":
        $value = delete_answer();
        break;
}
exit(json_encode(array("answers_list" => $value)));




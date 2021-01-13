<?php include_once __dir__ . "/../../config.php";

function get_questions_list()
{
    global $db_handle;
    $SQL = "SELECT * FROM questions";
    $result = mysqli_query($db_handle, $SQL);
    $questions_list = array();
    while ($db_field = mysqli_fetch_assoc($result)) {
        $questions_list[] = array(
            "q_id" => $db_field['q_id'],
            "question" => $db_field['question'],
            "asked_by" => $db_field['asked_by'],
            "created_at" => $db_field['created_at'],
        );
    }

    return $questions_list;
}

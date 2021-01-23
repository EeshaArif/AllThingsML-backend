<?php include_once __dir__ . "/../../config.php";

function get_answers_list()
{
    global $db_handle;
    $SQL = "SELECT * FROM ANSWERS";
    $result = mysqli_query($db_handle, $SQL);
    $answers_list = array();
    while ($db_field = mysqli_fetch_assoc($result)) {
        $answers_list[] = array(
            "a_id" => $db_field['a_id'],
            "q_id" => $db_field['q_id'],
            "answer" => $db_field['answer'],
            "answered_by" => $db_field['answered_by'],
            "created_at" => $db_field['created_at'],
        );
    }

    return $answers_list;
}

function get_answers_of_question($id)
{
    global $db_handle;
    $SQL = "SELECT * FROM ANSWERS WHERE q_id = $id";
    $result = mysqli_query($db_handle, $SQL);
    $answers_list = array();
    while ($db_field = mysqli_fetch_assoc($result)) {
        $answers_list[] = array(
            "a_id" => $db_field['a_id'],
            "q_id" => $db_field['q_id'],
            "answer" => $db_field['answer'],
            "answered_by" => $db_field['answered_by'],
            "created_at" => $db_field['created_at'],
        );
    }
    return $answers_list;
}

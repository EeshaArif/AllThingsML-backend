<?php include_once __dir__ . "/../../config.php";


function populate_array(&$list, $obj, $q_id)
{
    if ($q_id === true) {
        array_push($list, array(
            "q_id" => $obj['q_id'],
            "question" => $obj['question'],
            "asked_by" => $obj['asked_by'],
            "created_at" => $obj['created_at'],
        ));
    } else {
        array_push($list, array(
            "question" => $obj['question'],
            "asked_by" => $obj['asked_by'],
            "created_at" => $obj['created_at'],
        ));
    }
}



function get_questions_list()
{
    global $db_handle;
    $SQL = "SELECT * FROM QUESTIONS ORDER BY q_id DESC";
    $result = mysqli_query($db_handle, $SQL);
    $questions_list = array();
    while ($db_field = mysqli_fetch_assoc($result)) {
        populate_array($questions_list, $db_field, true);
    }
    return $questions_list;
}




function post_question()
{
    $file = file_get_contents("php://input", true);
    $data = (array) json_decode($file);
    if (isset($data['question']) && isset($data['asked_by']) && isset($data['created_at'])) {
        $question = $data['question'];
        $asked_by = $data['asked_by'];
        $created_at = $data['created_at'];
    } else {
        return "could not post question, all values not set";
    }
    global $db_handle;
    $SQL = "INSERT INTO QUESTIONS (question, asked_by, created_at) VALUES ('$question','$asked_by','$created_at')";

    $result = mysqli_query($db_handle, $SQL);
    $questions_list = array();
    if ($result == false) {
        return "could not insert question";
    } else {
        populate_array($questions_list, $data, false);
        return $questions_list;
    }
}




function delete_question()
{
    $file = file_get_contents("php://input", true);
    $data = (array) json_decode($file);
    if (!isset($data['q_id'])) {
        return "could not delete question, q_id not given";
    }
    $q_id = $data['q_id'];
    global $db_handle;
    $SQL_ = "SELECT * FROM QUESTIONS WHERE q_id = $q_id";
    $result = mysqli_query($db_handle, $SQL_);
    if (!$result) {
        return "could not find question with q_id";
        exit();
    }
    $SQL_A = "DELETE FROM ANSWERS WHERE q_id = $q_id";
    $answers_delete_result = mysqli_query($db_handle, $SQL_A);
    if ($answers_delete_result == false) {
        return "could not delete answers of question!";
    }
    $SQL = "DELETE FROM QUESTIONS WHERE q_id = $q_id";
    $delete_result = mysqli_query($db_handle, $SQL);
    $questions_list = array();
    if ($delete_result == false) {
        return "could not delete question!";
    }
    while ($db_field = mysqli_fetch_assoc($result)) {
        populate_array($questions_list, $db_field, true);
    }
    return $questions_list;
}

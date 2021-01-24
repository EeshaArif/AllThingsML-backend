<?php include_once __dir__ . "/../../config.php";

function populate_array(&$list, $obj, $id)
{
    if ($id === true) {
        array_push($list, array(
            "a_id" => $obj['a_id'],
            "q_id" => $obj['q_id'],
            "answer" => $obj['answer'],
            "answered_by" => $obj['answered_by'],
            "created_at" => $obj['created_at'],
        ));
    } else {
        array_push($list, array(
            "q_id" => $obj['q_id'],
            "answer" => $obj['answer'],
            "answered_by" => $obj['answered_by'],
            "created_at" => $obj['created_at'],

        ));
    }
}
function get_answers_list()
{
    global $db_handle;
    $SQL = "SELECT * FROM ANSWERS";
    $result = mysqli_query($db_handle, $SQL);
    $answers_list = array();
    while ($db_field = mysqli_fetch_assoc($result)) {
        populate_array($answers_list, $db_field, true);
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
        populate_array($answers_list, $db_field, true);
    }
    return $answers_list;
}

function post_answer()
{
    $file = file_get_contents("php://input", true);
    $data = (array) json_decode($file);
    if (isset($data['answer']) && isset($data['answered_by']) && isset($data['created_at']) && isset($data['q_id'])) {
        $answer = $data['answer'];
        $answered_by = $data['answered_by'];
        $created_at = $data['created_at'];
        $q_id = $data['q_id'];
    } else {
        return "could not post answer, all values not set";
    }
    global $db_handle;
    $SQL = "INSERT INTO ANSWERS (answer, answered_by, created_at, q_id) VALUES ('$answer','$answered_by','$created_at',$q_id)";
    $result = mysqli_query($db_handle, $SQL);
    $answers_list = array();
    if ($result == false) {
        echo "could not insert answer";
    } else {
        populate_array($answers_list, $data, false);
        return $answers_list;
    }
}

function delete_answer()
{
    $file = file_get_contents("php://input", true);
    $data = (array) json_decode($file);
    if (!isset($data['a_id'])) {
        return "could not delete answer, a_id not given";
    }
    $a_id = $data['a_id'];
    global $db_handle;
    $SQL_ = "SELECT * FROM ANSWERS WHERE a_id = $a_id";
    $result = mysqli_query($db_handle, $SQL_);
    if (!$result) {
        return "could not find answer with a_id";
        exit();
    }
    $SQL = "DELETE FROM ANSWERS WHERE a_id = $a_id";
    $delete_result = mysqli_query($db_handle, $SQL);
    $answers_list = array();
    if ($delete_result == false) {
        return "could not delete answer!";
    }
    while ($db_field = mysqli_fetch_assoc($result)) {
        populate_array($answers_list, $db_field, true);
    }
    return $answers_list;
}

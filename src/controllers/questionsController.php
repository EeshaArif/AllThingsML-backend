<?php include_once __dir__ . "/../../config.php";

function get_questions_list()
{
    global $db_handle;
    $SQL = "SELECT * FROM QUESTIONS";
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

function post_question($question_)
{
    global $db_handle;
    $question =  $question_->question;
    $asked_by = $question_->asked_by;
    $created_at = $question_->created_at;
    $SQL = "INSERT INTO QUESTIONS (question, asked_by, created_at) VALUES ('$question','$asked_by','$created_at')";

    $result = mysqli_query($db_handle, $SQL);
    $questions_list = array();
    if ($result == false) {
        echo "could not insert question";
    } else {
        $questions_list[] = array(
            "question" => $question,
            "asked_by" => $asked_by,
            "created_at" => $created_at,
        );

        return $questions_list;
    }
}

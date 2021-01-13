<?php include_once __dir__ . "/../../config.php";

function get_messages_list()
{
    global $db_handle;
    $SQL = "SELECT * FROM messages";
    $result = mysqli_query($db_handle, $SQL);
    $messages_list = array();
    while ($db_field = mysqli_fetch_assoc($result)) {
        $messages_list[] = array(
            "id" => $db_field['id'],
            "text" => $db_field['text'],
            "owner" => $db_field['owner'],
            "c_id" => $db_field['c_id'],
            "created_at" => $db_field['created_at'],
        );
    }

    return $messages_list;
}

function get_messages_of_community($id)
{
    global $db_handle;
    $SQL = "SELECT * FROM messages WHERE c_id = $id";
    $result = mysqli_query($db_handle, $SQL);
    $messages_list = array();
    while ($db_field = mysqli_fetch_assoc($result)) {
        $messages_list[] = array(
            "id" => $db_field['id'],
            "text" => $db_field['text'],
            "owner" => $db_field['owner'],
            "c_id" => $db_field['c_id'],
            "created_at" => $db_field['created_at'],
        );
    }
    return $messages_list;
}

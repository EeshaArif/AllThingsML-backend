<?php include_once __dir__ . "/../../config.php";

function populate_array(&$list, $obj, $id)
{
    if ($id === true) {
        array_push($list, array(
            "id" => $obj['id'],
            "text" => $obj['text'],
            "owner" => $obj['owner'],
            "c_id" => $obj['c_id'],
            "created_at" => $obj['created_at'],
        ));
    } else {
        array_push($list, array(
            "text" => $obj['text'],
            "owner" => $obj['owner'],
            "c_id" => $obj['c_id'],
            "created_at" => $obj['created_at'],
        ));
    }
}

function get_messages_list()
{
    global $db_handle;
    $SQL = "SELECT * FROM MESSAGES";
    $result = mysqli_query($db_handle, $SQL);
    $messages_list = array();
    while ($db_field = mysqli_fetch_assoc($result)) {
        populate_array($messages_list, $db_field, true);
    }

    return $messages_list;
}

function get_messages_of_community($id)
{
    global $db_handle;
    $SQL = "SELECT * FROM MESSAGES WHERE c_id = $id";
    $result = mysqli_query($db_handle, $SQL);
    $messages_list = array();
    while ($db_field = mysqli_fetch_assoc($result)) {
        populate_array($messages_list, $db_field, true);
    }
    return $messages_list;
}
function post_message()
{
    $file = file_get_contents("php://input", true);
    $data = (array) json_decode($file);
    if (isset($data['text']) && isset($data['owner']) && isset($data['c_id']) && isset($data['created_at'])) {
        $text = $data['text'];
        $owner = $data['owner'];
        $c_id = $data['c_id'];
        $created_at = $data['created_at'];
    } else {
        return "could not post message, all values not set";
    }
    global $db_handle;
    $SQL = "INSERT INTO MESSAGES (text, owner, created_at, c_id) VALUES ('$text','$owner','$created_at',$c_id)";

    $result = mysqli_query($db_handle, $SQL);
    $messages_list = array();
    if ($result == false) {
        return "could not insert message";
    }
    populate_array($messages_list, $data, false);
    return $messages_list;
}

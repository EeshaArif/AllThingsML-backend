<?php include_once __dir__ . "/../../config.php";

function get_communities_list()
{
    global $db_handle;
    $SQL = "SELECT * FROM COMMUNITIES";
    $result = mysqli_query($db_handle, $SQL);
    $communities_list = array();
    while ($db_field = mysqli_fetch_assoc($result)) {
        $communities_list[] = array(
            "c_id" => $db_field['c_id'],
            "topic" => $db_field['topic'],
            "created_at" => $db_field['created_at']
        );
    }

    return $communities_list;
}
function get_community_of_topic($topic)
{
    global $db_handle;
    $SQL = "SELECT * FROM COMMUNITIES WHERE topic='$topic'";
    $result = mysqli_query($db_handle, $SQL);
    $community_list = array();
    while ($db_field = mysqli_fetch_assoc($result)) {
        $community_list[] = array(
            "c_id" => $db_field['c_id'],
            "topic" => $db_field['topic'],
            "created_at" => $db_field['created_at']
        );
    }

    return $community_list;
}

<?php include_once __dir__ . "/../../config.php";

function get_articles_list()
{
    global $db_handle;
    $SQL = "SELECT * FROM ARTICLES";
    $result = mysqli_query($db_handle, $SQL);

    $articles_list = array();
    while ($db_field = mysqli_fetch_assoc($result)) {
        $articles_list[] = array(
            "id" => $db_field['id'],
            "heading" => $db_field['heading'],
            "author" => $db_field['author'],
            "body" => $db_field['body'],
            "description" => $db_field['description'],
            "thumbnail" => $db_field['thumbnail'],
            "created_at" => $db_field['created_at']
        );
    }

    return $articles_list;
}
function get_article_of_id($id)
{
    global $db_handle;
    $SQL = "SELECT * FROM ARTICLES WHERE id=$id";
    $result = mysqli_query($db_handle, $SQL);
    $articles_list = array();
    while ($db_field = mysqli_fetch_assoc($result)) {
        $articles_list[] = array(
            "id" => $db_field['id'],
            "heading" => $db_field['heading'],
            "author" => $db_field['author'],
            "body" => $db_field['body'],
            "description" =>$db_field['description'],
            "thumbnail" => $db_field['thumbnail'],
            "created_at" => $db_field['created_at']
        );
    }

    return $articles_list;
}

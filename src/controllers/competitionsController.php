<?php include_once __dir__ . "/../../config.php";

function populate_array(&$list, $obj, $id)
{
    if ($id === true) {
        array_push($list, array(
            "id" => $obj['id'],
            "name" => $obj['name'],
            "description" => $obj['description'],
            "start_date" => $obj['start_date'],
            "end_date" => $obj['end_date'],
            "image" => $obj['image'],
            "prize" => $obj['prize'],
            "host" => $obj['host'],
            "link" => $obj['link'],
        ));
    } else {
        array_push($list, array(
            "name" => $obj['name'],
            "description" => $obj['description'],
            "start_date" => $obj['start_date'],
            "end_date" => $obj['end_date'],
            "image" => $obj['image'],
            "prize" => $obj['prize'],
            "host" => $obj['host'],
            "link" => $obj['link'],
        ));
    }
}
function get_competitions_list()
{
    global $db_handle;
    $SQL = "SELECT * FROM COMPETITIONS";
    $result = mysqli_query($db_handle, $SQL);
    $competitions_list = array();
    while ($db_field = mysqli_fetch_assoc($result)) {
        populate_array($competitions_list, $db_field, true);
    }
    return $competitions_list;
}

function post_competition()
{
    $file = file_get_contents("php://input", true);
    $data = (array) json_decode($file);
    if (isset($data['name']) && isset($data['description']) && isset($data['prize']) && isset($data['start_date']) && isset($data['end_date']) && isset($data['link']) && isset($data['host']) && isset($data['link'])) {
        $name = $data['name'];
        $description = $data['description'];
        $prize = $data['prize'];
        $start_date = $data['start_date'];
        $end_date = $data['end_date'];
        $image = $data['image'];
        $host = $data['host'];
        $link = $data['link'];
    } else {
        return "could not post competition, all values not set";
    }
    global $db_handle;
    $SQL = "INSERT INTO COMPETITIONS (name, description, start_date,end_date, prize,image,host,link) VALUES ('$name','$description','$start_date','$end_date',$prize,'$image','$host','$link')";
    $result = mysqli_query($db_handle, $SQL);
    $competitions_list = array();
    if ($result == false) {
        return "could not insert competition";
    } else {
        populate_array($competitions_list, $data, false);

        return $competitions_list;
    }
}


function update_competition()
{
    $file = file_get_contents("php://input", true);
    $data = (array) json_decode($file);
    if (isset($data['id']) && isset($data['name']) && isset($data['description']) && isset($data['prize']) && isset($data['start_date']) && isset($data['end_date']) && isset($data['link']) && isset($data['host']) && isset($data['link'])) {
        $id = $data['id'];
        $name = $data['name'];
        $description = $data['description'];
        $prize = $data['prize'];
        $start_date = $data['start_date'];
        $end_date = $data['end_date'];
        $image = $data['image'];
        $host = $data['host'];
        $link = $data['link'];
    } else {
        return "could not update competition, all values not set";
    }
    global $db_handle;
    $SQL = "UPDATE COMPETITIONS SET name = '$name', description= '$description',start_date='$start_date',end_date='$end_date',prize=$prize,image='$image',host='$host',link='$link' WHERE id = $id";
    $result = mysqli_query($db_handle, $SQL);
    $competitions_list = array();
    if ($result == false) {
        return "could not update competition, sql query not valid";
    } else {
        populate_array($competitions_list, $data, false);
        return $competitions_list;
    }
}


function delete_competition()
{
    $file = file_get_contents("php://input", true);
    $data = (array) json_decode($file);
    if (!isset($data['id'])) {
        return "could not delete competition, id not given";
    }
    $id = $data['id'];
    global $db_handle;
    $SQL_ = "SELECT * FROM COMPETITIONS WHERE id = $id";
    $result = mysqli_query($db_handle, $SQL_);
    if (!$result) {
        return "could not find competition with id";
        exit();
    }
    $SQL = "DELETE FROM COMPETITIONS WHERE id = $id";
    $delete_result = mysqli_query($db_handle, $SQL);
    $competitions_list = array();
    if ($delete_result == false) {
        return "could not delete competition!";
    } else {
        while ($db_field = mysqli_fetch_assoc($result)) {
            populate_array($competitions_list, $db_field, true);
        }
        return $competitions_list;
    }
}

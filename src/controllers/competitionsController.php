<?php include_once __dir__ . "/../../config.php";

function get_competitions_list()
{
    global $db_handle;
    $SQL = "SELECT * FROM COMPETITIONS";
    $result = mysqli_query($db_handle, $SQL);
    $competitions_list = array();
    while ($db_field = mysqli_fetch_assoc($result)) {
        $competitions_list[] = array(
            "id" => $db_field['id'],
            "name" => $db_field['name'],
            "description" => $db_field['description'],
            "start_date" => $db_field['start_date'],
            "end_date" => $db_field['end_date'],
            "image" => $db_field['image'],
            "prize" => $db_field['prize'],
            "host" => $db_field['host'],
            "link" => $db_field['link'],
        );
    }

    return $competitions_list;
}

function post_competition($competition)
{
    global $db_handle;
    $name =  $competition->name;
    $description = $competition->description;
    $start_date = $competition->start_date;
    $end_date = $competition->end_date;
    $prize = $competition->prize;
    $image =  $competition->image;
    $host =  $competition->host;
    $link = $competition->link;
    $SQL = "INSERT INTO COMPETITIONS (name, description, start_date,end_date, prize,image,host,link) VALUES ('$name','$description','$start_date','$end_date',$prize,'$image','$host','$link')";
    $result = mysqli_query($db_handle, $SQL);
    $competitions_list = array();
    if ($result == false) {
        echo "could not insert competition";
    } else {
        $competitions_list[] = array(
            "name" => $name,
            "description" => $description,
            "start_date" => $start_date,
            "end_date" => $end_date,
            "prize" => $prize,
            "image" => $image,
            "host" => $host,
            "link" => $link

        );

        return $competitions_list;
    }
}



function update_competition($competition)
{
    global $db_handle;
    $id = $competition->id;
    $name =  $competition->name;
    $description = $competition->description;
    $start_date = $competition->start_date;
    $end_date = $competition->end_date;
    $prize = $competition->prize;
    $image =  $competition->image;
    $host =  $competition->host;
    $link = $competition->link;
    $SQL = "UPDATE COMPETITIONS SET name = '$name', description= '$description',start_date='$start_date',end_date='$end_date',prize=$prize,image='$image',host='$host',link='$link' WHERE id = $id";
    $result = mysqli_query($db_handle, $SQL);
    $competitions_list = array();
    if ($result == false) {
        echo "could not insert competition";
    } else {
        $competitions_list[] = array(
            "name" => $name,
            "description" => $description,
            "start_date" => $start_date,
            "end_date" => $end_date,
            "prize" => $prize,
            "image" => $image,
            "host" => $host,
            "link" => $link

        );

        return $competitions_list;
    }
}


function delete_competition($id)
{
    global $db_handle;
    $SQL_ = "SELECT * FROM COMPETITIONS WHERE id = $id";
    $result = mysqli_query($db_handle, $SQL_);
    if (!$result) {
        echo "could not find competition";
        exit();
    }
    $SQL = "DELETE FROM COMPETITIONS WHERE id = $id";
    $delete_result = mysqli_query($db_handle, $SQL);
    $competitions_list = array();
    if ($delete_result == false) {
        echo "could not delete competition!!!";
    } else {
        while ($db_field = mysqli_fetch_assoc($result)) {
        $competitions_list[] = array(
            "id" => $db_field['id'],
            "name" => $db_field['name'],
            "description" => $db_field['description'],
            "start_date" => $db_field['start_date'],
            "end_date" => $db_field['end_date'],
            "prize" => $db_field['prize'],
            "image" => $db_field['image'],
            "host" => $db_field['host'],
            "link" => $db_field['link']

        );
    }
        return $competitions_list;
    }
}

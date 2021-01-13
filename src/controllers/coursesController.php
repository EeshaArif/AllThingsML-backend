<?php include_once __dir__ . "/../../config.php";

function get_courses_list()
{
    global $db_handle;
    $SQL = "SELECT * FROM courses";
    $result = mysqli_query($db_handle, $SQL);
    $courses_list = array();
    while ($db_field = mysqli_fetch_assoc($result)) {
        $courses_list[] = array(
            "id" => $db_field['id'],
            "course_name" => $db_field['course_name'],
            "course_description" => $db_field['course_description'],
            "image" => $db_field['image'],
            "rating" => $db_field['rating'],
            "instructor" => $db_field['instructor'],
            "link" => $db_field['link'],
        );
    }

    return $courses_list;
}

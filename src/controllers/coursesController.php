<?php include_once __dir__ . "/../../config.php";

function populate_array(&$list, $obj, $id)
{
    if ($id === true) {
        array_push($list, array(
            "id" => $obj['id'],
            "course_name" => $obj['course_name'],
            "course_description" => $obj['course_description'],
            "image" => $obj['image'],
            "rating" => $obj['rating'],
            "instructor" => $obj['instructor'],
            "link" => $obj['link'],
        ));
    } else {
        array_push($list, array(
            "course_name" => $obj['course_name'],
            "course_description" => $obj['course_description'],
            "image" => $obj['image'],
            "rating" => $obj['rating'],
            "instructor" => $obj['instructor'],
            "link" => $obj['link'],
        ));
    }
}


function post_course()
{
    $file = file_get_contents("php://input", true);
    $data = (array) json_decode($file);
    if (isset($data['course_name']) && isset($data['course_description']) && isset($data['rating']) && isset($data['instructor']) && isset($data['image']) && isset($data['link'])) {
        $course_name = $data['course_name'];
        $course_description = $data['course_description'];
        $instructor = $data['instructor'];
        $rating = $data['rating'];
        $image = $data['image'];
        $link = $data['link'];
    } else {
        return "could not post course, all values not set";
    }
    global $db_handle;
    $SQL = "INSERT INTO COURSES (course_name, course_description, instructor,rating,image,link) VALUES ('$course_name','$course_description','$instructor',$rating,'$image','$link')";
    $result = mysqli_query($db_handle, $SQL);
    $courses_list = array();
    if ($result == false) {
        return "could not insert course";
    } else {
        populate_array($courses_list, $data, false);

        return $courses_list;
    }
}


function update_course()
{
    $file = file_get_contents("php://input", true);
    $data = (array) json_decode($file);
    if (isset($data['id']) && isset($data['course_name']) && isset($data['course_description']) && isset($data['instructor']) && isset($data['rating']) && isset($data['image']) && isset($data['link'])) {
        $id = $data['id'];
        $course_name = $data['course_name'];
        $course_description = $data['course_description'];
        $instructor = $data['instructor'];
        $rating = $data['rating'];
        $image = $data['image'];
        $link = $data['link'];
    } else {
        return "could not update course, all values not set";
    }
    global $db_handle;
    $SQL = "UPDATE COURSES SET course_name = '$course_name', course_description= '$course_description',instructor='$instructor',rating=$rating,image='$image',link='$link' WHERE id = $id";
    $result = mysqli_query($db_handle, $SQL);
    $courses_list = array();
    if ($result == false) {
        return "could not update course, sql query not valid";
    } else {
        populate_array($courses_list, $data, true);
        return $courses_list;
    }
}


function delete_course()
{
    $file = file_get_contents("php://input", true);
    $data = (array) json_decode($file);
    if (!isset($data['id'])) {
        return "could not delete course, id not given";
    }
    $id = $data['id'];
    global $db_handle;
    $SQL_ = "SELECT * FROM COURSES WHERE id = $id";
    $result = mysqli_query($db_handle, $SQL_);
    if (!$result) {
        return "could not find course with id";
        exit();
    }
    $SQL = "DELETE FROM COURSES WHERE id = $id";
    $delete_result = mysqli_query($db_handle, $SQL);
    $courses_list = array();
    if ($delete_result == false) {
        return "could not delete course!";
    } else {
        while ($db_field = mysqli_fetch_assoc($result)) {
            populate_array($courses_list, $db_field, true);
        }
        return $courses_list;
    }
}




function get_courses_list()
{
    global $db_handle;
    $SQL = "SELECT * FROM COURSES";
    $result = mysqli_query($db_handle, $SQL);
    $courses_list = array();
    while ($db_field = mysqli_fetch_assoc($result)) {
        populate_array($courses_list, $db_field, true);
    }

    return $courses_list;
}

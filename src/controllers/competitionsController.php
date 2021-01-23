<?php include_once __dir__."/../../config.php"; 

    function get_competitions_list(){
        GLOBAL $db_handle;
        $SQL = "SELECT * FROM COMPETITIONS";
        $result = mysqli_query($db_handle,$SQL);
        $competitions_list = array();
        while ( $db_field = mysqli_fetch_assoc($result) ) {
            $competitions_list[] = array(
            "id" => $db_field['id'],
            "name"=>$db_field['name'],
            "description"=>$db_field['description'],
            "start_date" => $db_field['start_date'],
            "end_date"=>$db_field['end_date'],
            "image" => $db_field['image'],
            "prize"=>$db_field['prize'],
            "host" => $db_field['host'],
            "link"=>$db_field['link'],);
            }
        
            return $competitions_list;
    }

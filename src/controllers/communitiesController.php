<?php include_once __dir__."/../../config.php"; 

    function get_communities_list(){
        GLOBAL $db_handle;
        $SQL = "SELECT * FROM communities";
        $result = mysqli_query($db_handle,$SQL);
        $communities_list = array();
        while ( $db_field = mysqli_fetch_assoc($result) ) {
            $communities_list[] = array(
            "c_id" => $db_field['c_id'],
            "topic"=>$db_field['topic'],
            "created_at"=>$db_field['created_at']);
            }
        
            return $communities_list;
    }
    ?>
    	